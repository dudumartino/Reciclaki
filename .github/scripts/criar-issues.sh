#!/usr/bin/env bash
#
# Cria labels, milestones e issues do Reciclaki no GitHub a partir de docs/issues.md.
#
# Uso:
#   ./.github/scripts/criar-issues.sh <dono/repositorio> [numero-do-projeto]
#
# Exemplos:
#   ./.github/scripts/criar-issues.sh fulano/Reciclaki
#   ./.github/scripts/criar-issues.sh fulano/Reciclaki 1
#   DRY_RUN=1 ./.github/scripts/criar-issues.sh fulano/Reciclaki
#
# Pré-requisitos:
#   - GitHub CLI autenticado: gh auth login
#   - Para adicionar as issues ao Project Board: gh auth refresh -s project
#
# Comportamento:
#   - Labels existentes são atualizadas; milestones e issues existentes (mesmo título) são ignoradas.
#   - Issues da coluna "Done" são criadas e fechadas como concluídas.
#   - Se o número do projeto for informado, cada issue é adicionada ao board e o campo
#     Status recebe a coluna correspondente (Done, In Progress ou To Do/Todo).
#   - DRY_RUN=1 apenas mostra o que seria feito, sem chamar a API do GitHub.

set -euo pipefail

REPO="${1:-}"
PROJETO="${2:-}"
DRY_RUN="${DRY_RUN:-0}"

if [[ -z "$REPO" || "$REPO" != */* ]]; then
  echo "Uso: $0 <dono/repositorio> [numero-do-projeto]" >&2
  exit 1
fi

DONO="${REPO%%/*}"
RAIZ="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
ARQUIVO="$RAIZ/docs/issues.md"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

if [[ ! -f "$ARQUIVO" ]]; then
  echo "Arquivo não encontrado: $ARQUIVO" >&2
  exit 1
fi

if [[ "$DRY_RUN" != "1" ]]; then
  gh auth status >/dev/null 2>&1 || { echo "Execute 'gh auth login' antes." >&2; exit 1; }
fi

executar() {
  if [[ "$DRY_RUN" == "1" ]]; then
    echo "  [dry-run] $*"
  else
    "$@"
  fi
}

# ---------------------------------------------------------------------------
# Labels
# ---------------------------------------------------------------------------
echo "==> Criando labels"

LABELS=(
  "mapa-de-coleta|2E7D32|Funcionalidade: Mapa de Coleta"
  "logistica-reversa|1565C0|Funcionalidade: Logística Reversa B2B"
  "painel-de-impacto|6A1B9A|Funcionalidade: Painel de Impacto"
  "onde-jogo-isso|F9A825|Funcionalidade: Diretório Onde Jogo Isso?"
  "denuncia-cidada|C62828|Funcionalidade: Denúncia Cidadã"
  "persona: cidadão|A5D6A7|Persona Cidadão"
  "persona: comércio-b2b|90CAF9|Persona Comércio B2B"
  "persona: gestor-público|CE93D8|Persona Gestor Público"
  "frontend|61DAFB|Interface em React"
  "backend|6DB33F|API em Spring Boot"
  "infraestrutura|546E7A|Configuração, build e deploy"
  "documentação|0075CA|Documentação do projeto"
  "ux|FF7043|Experiência e interface do usuário"
  "segurança|B71C1C|Autenticação e proteção de dados"
  "qualidade|00897B|Testes, acessibilidade e revisão"
  "conteúdo|8D6E63|Conteúdo educativo"
  "prioridade: alta|D93F0B|Prioridade alta"
  "prioridade: média|FBCA04|Prioridade média"
  "prioridade: baixa|0E8A16|Prioridade baixa"
)

for item in "${LABELS[@]}"; do
  IFS='|' read -r nome cor descricao <<< "$item"
  echo "  $nome"
  executar gh label create "$nome" --color "$cor" --description "$descricao" --force -R "$REPO" >/dev/null
done

# ---------------------------------------------------------------------------
# Milestones
# ---------------------------------------------------------------------------
echo "==> Criando milestones"

MILESTONES=(
  "Sprint 1: Planejamento|Repositório, contexto, Design Thinking, personas e requisitos"
  "Sprint 2: Design e Base|Wireframes, protótipo, minimundo e configuração do frontend e do backend"
  "Sprint 3: Funcionalidades|Mapa de Coleta, Onde Jogo Isso?, Denúncia Cidadã e Logística Reversa B2B"
  "Sprint 4: Entrega|Painel de Impacto, testes, avaliação heurística, deploy, vídeo e apresentação"
)

MILESTONES_EXISTENTES="$TMP/milestones.txt"
: > "$MILESTONES_EXISTENTES"
if [[ "$DRY_RUN" != "1" ]]; then
  gh api "repos/$REPO/milestones?state=all&per_page=100" -q '.[].title' | tr -d '\r' > "$MILESTONES_EXISTENTES"
fi

for item in "${MILESTONES[@]}"; do
  IFS='|' read -r titulo descricao <<< "$item"
  if grep -Fxq "$titulo" "$MILESTONES_EXISTENTES"; then
    echo "  $titulo (já existe)"
    continue
  fi
  echo "  $titulo"
  executar gh api -X POST "repos/$REPO/milestones" -f title="$titulo" -f description="$descricao" >/dev/null
done

milestone_por_sprint() {
  case "$1" in
    1) echo "Sprint 1: Planejamento" ;;
    2) echo "Sprint 2: Design e Base" ;;
    3) echo "Sprint 3: Funcionalidades" ;;
    4) echo "Sprint 4: Entrega" ;;
    *) echo "" ;;
  esac
}

# ---------------------------------------------------------------------------
# Project Board (opcional)
# ---------------------------------------------------------------------------
declare -A OPCOES_STATUS=()
PROJETO_ID=""
CAMPO_STATUS_ID=""

normalizar() {
  echo "$1" | tr '[:upper:]' '[:lower:]' | tr -d ' \r'
}

if [[ -n "$PROJETO" && "$DRY_RUN" != "1" ]]; then
  echo "==> Lendo o Project Board #$PROJETO"
  PROJETO_ID="$(gh project view "$PROJETO" --owner "$DONO" --format json -q '.id' | tr -d '\r')"
  CAMPO_STATUS_ID="$(gh project field-list "$PROJETO" --owner "$DONO" --format json \
    -q '.fields[] | select(.name=="Status") | .id' | tr -d '\r')"
  while IFS=$'\t' read -r id nome; do
    [[ -n "$id" ]] && OPCOES_STATUS["$(normalizar "$nome")"]="$id"
  done < <(gh project field-list "$PROJETO" --owner "$DONO" --format json \
    -q '.fields[] | select(.name=="Status") | .options[] | [.id, .name] | @tsv' | tr -d '\r')
  echo "  Colunas encontradas: ${!OPCOES_STATUS[*]}"
fi

definir_status() {
  local url="$1" coluna="$2" item_id opcao
  opcao="${OPCOES_STATUS[$(normalizar "$coluna")]:-}"
  item_id="$(gh project item-add "$PROJETO" --owner "$DONO" --url "$url" --format json -q '.id' | tr -d '\r')"
  if [[ -z "$opcao" ]]; then
    echo "    Aviso: coluna '$coluna' não existe no board; issue adicionada sem status."
    return
  fi
  gh project item-edit --id "$item_id" --project-id "$PROJETO_ID" \
    --field-id "$CAMPO_STATUS_ID" --single-select-option-id "$opcao" >/dev/null
}

# ---------------------------------------------------------------------------
# Issues
# ---------------------------------------------------------------------------
echo "==> Criando issues"

ISSUES_EXISTENTES="$TMP/issues.txt"
: > "$ISSUES_EXISTENTES"
if [[ "$DRY_RUN" != "1" ]]; then
  gh issue list -R "$REPO" --state all --limit 1000 --json title -q '.[].title' | tr -d '\r' > "$ISSUES_EXISTENTES"
fi

coluna=""
em_issue=0
numero=""
titulo=""
sprint=""
corpo=""
labels=()

criar_issue() {
  local milestone arquivo_corpo url
  milestone="$(milestone_por_sprint "$sprint")"

  if grep -Fxq "$titulo" "$ISSUES_EXISTENTES"; then
    echo "  #$numero $titulo (já existe)"
    return
  fi

  arquivo_corpo="$TMP/corpo-$numero.md"
  printf '%s' "$corpo" > "$arquivo_corpo"

  local args=(-R "$REPO" --title "$titulo" --body-file "$arquivo_corpo")
  [[ -n "$milestone" ]] && args+=(--milestone "$milestone")
  local l
  for l in "${labels[@]}"; do
    args+=(--label "$l")
  done

  echo "  #$numero $titulo [$coluna]"

  if [[ "$DRY_RUN" == "1" ]]; then
    echo "    labels: ${labels[*]}"
    echo "    milestone: $milestone"
    return
  fi

  url="$(gh issue create "${args[@]}" | tr -d '\r' | tail -n 1)"
  echo "    $url"

  if [[ -n "$PROJETO" ]]; then
    definir_status "$url" "$coluna"
  fi

  if [[ "$coluna" == "Done" ]]; then
    gh issue close "$url" --reason completed >/dev/null
  fi

  sleep 1
}

finalizar_issue() {
  if [[ "$em_issue" == "1" ]]; then
    criar_issue
  fi
  em_issue=0
}

while IFS= read -r linha || [[ -n "$linha" ]]; do
  linha="${linha%$'\r'}"

  case "$linha" in
    "# "*"Done"*)        finalizar_issue; coluna="Done" ;;
    "# "*"In Progress"*) finalizar_issue; coluna="In Progress" ;;
    "# "*"To Do"*)       finalizar_issue; coluna="To Do" ;;
    "### #"*)
      finalizar_issue
      em_issue=1
      resto="${linha#"### #"}"
      numero="${resto%% - *}"
      titulo="${resto#* - }"
      sprint=""
      corpo=""
      labels=()
      ;;
    "---"|"# "*|"## "*)
      finalizar_issue ;;
    *)
      [[ "$em_issue" == "1" ]] || continue
      case "$linha" in
        "**Labels:**"*)
          while IFS= read -r l; do
            [[ -n "$l" ]] && labels+=("$l")
          done < <(grep -o '`[^`]*`' <<< "$linha" | tr -d '`')
          ;;
        "**Milestone:**"*)
          sprint="$(sed -n 's/.*Sprint \([0-9]\).*/\1/p' <<< "$linha")"
          ;;
        "**Persona:**"*)
          [[ "$linha" == *"Cidadão"* ]]        && labels+=("persona: cidadão")
          [[ "$linha" == *"Comércio B2B"* ]]   && labels+=("persona: comércio-b2b")
          [[ "$linha" == *"Gestor Público"* ]] && labels+=("persona: gestor-público")
          corpo+="$linha"$'\n'
          ;;
        "**Prioridade:**"*)
          case "$linha" in
            *Alta*)  labels+=("prioridade: alta") ;;
            *dia*)   labels+=("prioridade: média") ;;
            *Baixa*) labels+=("prioridade: baixa") ;;
          esac
          corpo+="$linha"$'\n'
          ;;
        "**Descrição**")          corpo+="## Descrição"$'\n' ;;
        "**Critérios de aceite**") corpo+="## Critérios de aceite"$'\n' ;;
        *)                         corpo+="$linha"$'\n' ;;
      esac
      ;;
  esac
done < "$ARQUIVO"

finalizar_issue

echo "==> Concluído"
