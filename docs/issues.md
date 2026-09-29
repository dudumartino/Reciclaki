[⬅ Voltar ao índice](README.md)

# Planejamento de Issues: Project Board

Este documento lista as issues do projeto, organizadas pelas colunas do Project Board.
Cada issue é criada no GitHub com o **título**, a **descrição**, as **labels** e o **milestone** indicados.

## Legenda

| Campo | Valores |
|-------|---------|
| **Funcionalidade** | Mapa de Coleta · Logística Reversa B2B · Painel de Impacto · Onde Jogo Isso? · Denúncia Cidadã · Documentação · Infraestrutura · Qualidade |
| **Persona** | Cidadão · Comércio B2B · Gestor Público · Todas |
| **Prioridade** | Alta · Média · Baixa |
| **Milestone** | Sprint 1 (Planejamento) · Sprint 2 (Design e Base) · Sprint 3 (Funcionalidades) · Sprint 4 (Entrega) |

---

# ✅ Done

---

### #1 - Criar repositório a partir do template da disciplina

**Labels:** `infraestrutura` `documentação`
**Funcionalidade:** Infraestrutura
**Persona:** Todas
**Prioridade:** Alta
**Milestone:** Sprint 1

**Descrição**
Criar o repositório do projeto a partir do template da disciplina, mantendo a estrutura de pastas `codigo`, `docs` e `divulgacao`, e adicionar todos os integrantes como colaboradores.

**Critérios de aceite**
- [x] Repositório criado a partir do template
- [x] Estrutura de pastas `codigo/`, `docs/` e `divulgacao/` mantida
- [x] Arquivo `.gitignore` configurado para Node.js, Java/Maven e IDEs
- [x] Integrantes adicionados como colaboradores

---

### #2 - Preencher capa do projeto (README) e CITATION.cff

**Labels:** `documentação`
**Funcionalidade:** Documentação
**Persona:** Todas
**Prioridade:** Alta
**Milestone:** Sprint 1

**Descrição**
Preencher o `README.md` da raiz com o nome do projeto, o resumo, os integrantes e os professores, e completar o arquivo `CITATION.cff` com título, autores e palavras-chave.

**Critérios de aceite**
- [x] Nome e resumo do projeto
- [x] Integrantes e professores listados
- [x] `CITATION.cff` preenchido
- [x] Seção de instruções do template removida

---

### #3 - Documentar o contexto do projeto

**Labels:** `documentação`
**Funcionalidade:** Documentação
**Persona:** Todas
**Prioridade:** Alta
**Milestone:** Sprint 1

**Descrição**
Escrever a seção `docs/secoes/1_contexto.md` com o problema da gestão inadequada e da desinformação sobre resíduos sólidos urbanos, os objetivos geral e específicos, a justificativa e o público-alvo.

**Critérios de aceite**
- [x] Problema descrito com dados e fontes
- [x] Objetivo geral e pelo menos dois objetivos específicos
- [x] Justificativa
- [x] Público-alvo com os três perfis de usuários

---

### #4 - Elaborar Matriz CSD e Mapa de Stakeholders

**Labels:** `documentação` `ux`
**Funcionalidade:** Documentação
**Persona:** Todas
**Prioridade:** Alta
**Milestone:** Sprint 1

**Descrição**
Construir no Miro a Matriz CSD (certezas, suposições e dúvidas) e o mapa de stakeholders, e registrar os resultados em `docs/secoes/2_product-discovery.md`.

**Critérios de aceite**
- [x] Matriz CSD com certezas, suposições e dúvidas
- [x] Mapa de stakeholders em três níveis
- [x] Quadro do Miro exportado em `docs/files/processo-dt.pdf`

---

### #5 - Criar personas e mapas de empatia

**Labels:** `documentação` `ux`
**Funcionalidade:** Documentação
**Persona:** Cidadão · Comércio B2B · Gestor Público
**Prioridade:** Alta
**Milestone:** Sprint 1

**Descrição**
Definir as três personas do projeto (Cidadão, Comércio B2B e Gestor Público), com biografia, objetivos, frustrações e mapa de empatia de cada uma.

**Critérios de aceite**
- [x] Persona Cidadão com mapa de empatia
- [x] Persona Comércio B2B com mapa de empatia
- [x] Persona Gestor Público com mapa de empatia

---

### #6 - Configurar Project Board, labels e milestones

**Labels:** `infraestrutura`
**Funcionalidade:** Infraestrutura
**Persona:** Todas
**Prioridade:** Média
**Milestone:** Sprint 1

**Descrição**
Configurar o GitHub Projects no layout Board, criar as labels de funcionalidade, persona e tipo, e os milestones das sprints, conforme `docs/secoes/5_metodologia.md`.

**Critérios de aceite**
- [x] Colunas Backlog, To Do, In Progress, Review e Done
- [x] Labels de funcionalidade, persona e tipo
- [x] Milestones Sprint 1 a Sprint 4
- [x] Modelos de issue em `.github/ISSUE_TEMPLATE`

---

# 🔄 In Progress

---

### #7 - Realizar entrevistas qualitativas e registrar highlights

**Labels:** `documentação` `ux`
**Funcionalidade:** Documentação
**Persona:** Cidadão · Comércio B2B · Gestor Público
**Prioridade:** Alta
**Milestone:** Sprint 1

**Descrição**
Aplicar os roteiros de entrevista com pelo menos um representante de cada perfil e registrar os principais achados na tabela de highlights de pesquisa.

**Critérios de aceite**
- [ ] Pelo menos 5 entrevistas realizadas
- [ ] Tabela de highlights preenchida
- [ ] Suposições da Matriz CSD validadas ou revisadas

---

### #8 - Definir proposta de valor, requisitos e priorização

**Labels:** `documentação`
**Funcionalidade:** Documentação
**Persona:** Todas
**Prioridade:** Alta
**Milestone:** Sprint 2

**Descrição**
Elaborar a proposta de valor de cada persona, listar os requisitos funcionais e não funcionais e priorizá-los com a técnica MoSCoW em `docs/secoes/3_product-design.md`.

**Critérios de aceite**
- [ ] Proposta de valor para as três personas
- [ ] Requisitos funcionais com prioridade (Essencial, Desejável, Opcional)
- [ ] Requisitos não funcionais descritos de forma mensurável
- [ ] Tabela de priorização MoSCoW

---

### #9 - Criar user flow e design system

**Labels:** `ux` `documentação`
**Funcionalidade:** Todas
**Persona:** Todas
**Prioridade:** Alta
**Milestone:** Sprint 2

**Descrição**
Desenhar o fluxo de telas da aplicação e definir o design system (cores, cores das lixeiras, tipografia e componentes).

**Critérios de aceite**
- [ ] User flow com os caminhos de cada perfil
- [ ] Paleta de cores e tipografia definidas
- [ ] Componentes principais documentados

---

### #10 - Criar wireframes e protótipo interativo no Figma

**Labels:** `ux` `frontend`
**Funcionalidade:** Todas
**Persona:** Todas
**Prioridade:** Alta
**Milestone:** Sprint 2

**Descrição**
Criar os wireframes das telas principais nas versões mobile e desktop e montar o protótipo navegável no Figma.

**Critérios de aceite**
- [ ] Telas: Home, Onde Jogo Isso?, Mapa, Denúncia, Painel B2B e Painel de Impacto
- [ ] Versões mobile e desktop
- [ ] Imagens exportadas em `docs/images/`
- [ ] Link do protótipo adicionado à documentação

---

### #11 - Escrever o minimundo e o modelo de dados

**Labels:** `documentação` `backend`
**Funcionalidade:** Todas
**Persona:** Todas
**Prioridade:** Alta
**Milestone:** Sprint 2

**Descrição**
Descrever o minimundo do Reciclaki, com atores, regras e restrições, e elaborar o diagrama entidade-relacionamento a partir dele em `docs/secoes/4_minimundo.md`.

**Critérios de aceite**
- [ ] Minimundo cobrindo as cinco funcionalidades
- [ ] Regras de status de denúncias e coletas descritas
- [ ] Diagrama entidade-relacionamento

---

# 📝 To Do

---

## Base do sistema

### #12 - Inicializar o projeto React com Vite

**Labels:** `frontend` `infraestrutura`
**Funcionalidade:** Infraestrutura
**Persona:** Todas
**Prioridade:** Alta
**Milestone:** Sprint 2

**Descrição**
Criar a aplicação React em `codigo/frontend` com Vite, configurar React Router, Axios e a estrutura de pastas (components, pages, services, hooks, styles).

**Critérios de aceite**
- [ ] Projeto executa com `npm run dev`
- [ ] Rotas base para todas as páginas
- [ ] Serviço Axios com URL lida de `VITE_API_URL`
- [ ] ESLint configurado

---

### #13 - Inicializar o projeto Spring Boot

**Labels:** `backend` `infraestrutura`
**Funcionalidade:** Infraestrutura
**Persona:** Todas
**Prioridade:** Alta
**Milestone:** Sprint 2

**Descrição**
Criar a API em `codigo/backend` com Spring Boot (Maven, Java 17) e as dependências Spring Web, Spring Data JPA, Validation, Security, H2, PostgreSQL e Springdoc OpenAPI.

**Critérios de aceite**
- [ ] Projeto executa com `./mvnw spring-boot:run`
- [ ] Camadas controller, service, repository, model, dto e config
- [ ] Perfis `dev` (H2) e `prod` (PostgreSQL)
- [ ] Swagger acessível em `/swagger-ui.html`
- [ ] CORS liberado para o frontend

---

### #14 - Criar layout base responsivo

**Labels:** `frontend` `ux`
**Funcionalidade:** Infraestrutura
**Persona:** Todas
**Prioridade:** Alta
**Milestone:** Sprint 2

**Descrição**
Implementar cabeçalho com logo e menu (hambúrguer no mobile) e rodapé, seguindo o design system e a abordagem Mobile First.

**Critérios de aceite**
- [ ] Header com navegação para todas as seções
- [ ] Menu hambúrguer abaixo de 768 px
- [ ] Footer com links do projeto
- [ ] Testado em celular, tablet e desktop

---

### #15 - Implementar cadastro e login com perfis de acesso

**Labels:** `backend` `frontend` `segurança`
**Funcionalidade:** Infraestrutura
**Persona:** Cidadão · Comércio B2B · Gestor Público
**Prioridade:** Alta
**Milestone:** Sprint 2

**Descrição**
Implementar cadastro e login com JWT e os perfis `CIDADAO`, `EMPRESA` e `GESTOR`, cada um com acesso apenas às funcionalidades permitidas (RF001, RNF003, RNF004).

**Critérios de aceite**
- [ ] Endpoints `POST /api/auth/register` e `POST /api/auth/login`
- [ ] Senhas com hash BCrypt
- [ ] Rotas protegidas por token e perfil
- [ ] Telas de cadastro e login responsivas

---

## 🗺️ Mapa de Coleta

### #16 - [Mapa de Coleta] API de pontos de coleta

**Labels:** `backend` `mapa-de-coleta`
**Funcionalidade:** Mapa de Coleta
**Persona:** Gestor Público
**Prioridade:** Alta
**Milestone:** Sprint 3

**Descrição**
Criar a entidade `PontoColeta` e o CRUD correspondente, com as categorias de resíduos aceitas. Apenas o gestor cadastra, edita e desativa pontos (RF004).

**Critérios de aceite**
- [ ] `GET /api/pontos` com filtro por categoria
- [ ] `POST`, `PUT` e `DELETE` restritos ao perfil `GESTOR`
- [ ] Carga inicial com pontos de exemplo

---

### #17 - [Mapa de Coleta] Mapa interativo com os pontos

**Labels:** `frontend` `mapa-de-coleta`
**Funcionalidade:** Mapa de Coleta
**Persona:** Cidadão · Comércio B2B
**Prioridade:** Alta
**Milestone:** Sprint 3

**Descrição**
Como **Cidadão**, quero ver em um mapa os pontos de coleta próximos para saber onde levar meus resíduos. Implementar com Leaflet e OpenStreetMap (RF002).

**Critérios de aceite**
- [ ] Marcadores com ícones por tipo de ponto
- [ ] Pop-up com endereço, horário e materiais aceitos
- [ ] Botão "Minha localização"
- [ ] Mapa responsivo

---

### #18 - [Mapa de Coleta] Filtros por resíduo e busca por endereço

**Labels:** `frontend` `mapa-de-coleta`
**Funcionalidade:** Mapa de Coleta
**Persona:** Cidadão · Comércio B2B
**Prioridade:** Média
**Milestone:** Sprint 3

**Descrição**
Adicionar filtros por categoria de resíduo e busca por endereço ou bairro com Nominatim (RF003).

**Critérios de aceite**
- [ ] Filtro com seleção múltipla de categorias
- [ ] Busca por endereço centraliza o mapa
- [ ] Lista dos pontos mais próximos

---

## 🔎 Onde Jogo Isso?

### #19 - [Onde Jogo Isso?] Base de resíduos e API de busca

**Labels:** `backend` `onde-jogo-isso`
**Funcionalidade:** Onde Jogo Isso?
**Persona:** Cidadão · Comércio B2B
**Prioridade:** Alta
**Milestone:** Sprint 3

**Descrição**
Criar as entidades `Categoria` e `Residuo` e o endpoint de busca por nome e sinônimos, ignorando acentos e maiúsculas (RF005).

**Critérios de aceite**
- [ ] `GET /api/residuos?busca=termo`
- [ ] Busca tolerante a acentos
- [ ] Carga inicial com pelo menos 50 itens

---

### #20 - [Onde Jogo Isso?] Tela de busca e resultado

**Labels:** `frontend` `onde-jogo-isso`
**Funcionalidade:** Onde Jogo Isso?
**Persona:** Cidadão
**Prioridade:** Alta
**Milestone:** Sprint 3

**Descrição**
Como **Cidadão**, quero digitar o nome de um item e descobrir como e onde descartá-lo (RF005, RF006).

**Critérios de aceite**
- [ ] Campo com autocompletar
- [ ] Resultado com categoria, cor da lixeira e instruções
- [ ] Botão "Ver pontos próximos" abre o mapa filtrado
- [ ] Mensagem amigável quando o item não é encontrado

---

### #21 - [Onde Jogo Isso?] Seção "Mitos e Verdades"

**Labels:** `frontend` `conteúdo` `onde-jogo-isso`
**Funcionalidade:** Onde Jogo Isso?
**Persona:** Cidadão
**Prioridade:** Baixa
**Milestone:** Sprint 3

**Descrição**
Criar conteúdo educativo contra a desinformação sobre reciclagem, em linguagem simples e com fontes (RF007).

**Critérios de aceite**
- [ ] Pelo menos 10 cards de mitos e verdades
- [ ] Fonte em cada card
- [ ] Layout responsivo

---

## 📢 Denúncia Cidadã

### #22 - [Denúncia Cidadã] API de denúncias com upload de foto

**Labels:** `backend` `denuncia-cidada`
**Funcionalidade:** Denúncia Cidadã
**Persona:** Cidadão · Gestor Público
**Prioridade:** Alta
**Milestone:** Sprint 3

**Descrição**
Criar a entidade `Denuncia` e o histórico de status. Fluxo: Aberta, Em análise, Resolvida ou Arquivada (RF008, RF009, RNF008).

**Critérios de aceite**
- [ ] `POST /api/denuncias` com foto JPG/PNG de até 5 MB
- [ ] Protocolo gerado automaticamente
- [ ] `GET /api/denuncias/protocolo/{protocolo}` sem dados pessoais
- [ ] `PATCH /api/denuncias/{id}/status` restrito ao `GESTOR`

---

### #23 - [Denúncia Cidadã] Formulário de denúncia

**Labels:** `frontend` `denuncia-cidada`
**Funcionalidade:** Denúncia Cidadã
**Persona:** Cidadão
**Prioridade:** Alta
**Milestone:** Sprint 3

**Descrição**
Como **Cidadão**, quero denunciar um descarte irregular com foto e localização para que a prefeitura tome providências.

**Critérios de aceite**
- [ ] Formulário com descrição, foto e local no mapa
- [ ] Uso da câmera do celular
- [ ] Protocolo exibido após o envio
- [ ] Tela de consulta pelo protocolo

---

### #24 - [Denúncia Cidadã] Painel de triagem do gestor

**Labels:** `frontend` `denuncia-cidada`
**Funcionalidade:** Denúncia Cidadã
**Persona:** Gestor Público
**Prioridade:** Média
**Milestone:** Sprint 3

**Descrição**
Como **Gestor Público**, quero visualizar e gerenciar as denúncias para priorizar ações de limpeza e fiscalização (RF010).

**Critérios de aceite**
- [ ] Lista com filtros por status, bairro e data
- [ ] Denúncias exibidas no mapa
- [ ] Alteração de status com observação

---

## 🚚 Logística Reversa B2B

### #25 - [Logística Reversa B2B] Cadastro de empresas geradoras e recicladoras

**Labels:** `backend` `frontend` `logistica-reversa`
**Funcionalidade:** Logística Reversa B2B
**Persona:** Comércio B2B
**Prioridade:** Alta
**Milestone:** Sprint 3

**Descrição**
Como **Comércio B2B**, quero cadastrar minha empresa para solicitar a coleta dos meus recicláveis. Recicladoras informam as categorias que aceitam (RF011).

**Critérios de aceite**
- [ ] Cadastro com CNPJ validado, razão social, endereço e contato
- [ ] Tipo da empresa: geradora ou recicladora
- [ ] Tela de perfil da empresa

---

### #26 - [Logística Reversa B2B] Solicitação e acompanhamento de coletas

**Labels:** `backend` `frontend` `logistica-reversa`
**Funcionalidade:** Logística Reversa B2B
**Persona:** Comércio B2B
**Prioridade:** Alta
**Milestone:** Sprint 3

**Descrição**
Permitir que a geradora crie solicitações e que a recicladora as aceite e conclua. Fluxo: Pendente, Aceita, Coletada, Concluída (RF012, RF013).

**Critérios de aceite**
- [ ] Solicitação com material, volume, endereço e data
- [ ] Recicladora vê apenas solicitações compatíveis
- [ ] Registro do peso real coletado
- [ ] Histórico de coletas

---

### #27 - [Logística Reversa B2B] Comprovante de destinação

**Labels:** `backend` `frontend` `logistica-reversa`
**Funcionalidade:** Logística Reversa B2B
**Persona:** Comércio B2B · Gestor Público
**Prioridade:** Média
**Milestone:** Sprint 4

**Descrição**
Emitir comprovante de cada coleta concluída para que o comércio comprove a destinação correta dos resíduos (RF014).

**Critérios de aceite**
- [ ] Comprovante com empresas, material, peso e data
- [ ] Código de verificação
- [ ] Download a partir do histórico

---

## 📊 Painel de Impacto

### #28 - [Painel de Impacto] API de indicadores

**Labels:** `backend` `painel-de-impacto`
**Funcionalidade:** Painel de Impacto
**Persona:** Gestor Público
**Prioridade:** Média
**Milestone:** Sprint 4

**Descrição**
Consolidar kg destinados por categoria, denúncias por status e bairro, coletas realizadas e CO₂ evitado (RF015).

**Critérios de aceite**
- [ ] `GET /api/indicadores/resumo` com filtro por período
- [ ] Cálculo de CO₂ com fatores por categoria
- [ ] Versão pública apenas com dados agregados

---

### #29 - [Painel de Impacto] Dashboard com gráficos

**Labels:** `frontend` `painel-de-impacto`
**Funcionalidade:** Painel de Impacto
**Persona:** Gestor Público · Cidadão · Comércio B2B
**Prioridade:** Média
**Milestone:** Sprint 4

**Descrição**
Como **Gestor Público**, quero ver indicadores em gráficos para avaliar os resultados das ações de coleta e fiscalização (RF015, RF017).

**Critérios de aceite**
- [ ] Cards com os principais números
- [ ] Gráficos com Chart.js
- [ ] Ranking de bairros participativos
- [ ] Versão pública e versão completa do gestor

---

### #30 - [Painel de Impacto] Exportação de relatórios em CSV

**Labels:** `backend` `frontend` `painel-de-impacto`
**Funcionalidade:** Painel de Impacto
**Persona:** Gestor Público
**Prioridade:** Baixa
**Milestone:** Sprint 4

**Descrição**
Permitir que o gestor exporte os indicadores do período selecionado (RF016).

**Critérios de aceite**
- [ ] Botão "Exportar CSV"
- [ ] Arquivo respeita o filtro de período

---

## Entrega e qualidade

### #31 - Criar página inicial (Home)

**Labels:** `frontend` `ux`
**Funcionalidade:** Infraestrutura
**Persona:** Todas
**Prioridade:** Alta
**Milestone:** Sprint 3

**Descrição**
Criar a Home com apresentação do problema, números de impacto e atalhos para cada funcionalidade e perfil.

**Critérios de aceite**
- [ ] Seção sobre o problema
- [ ] Atalhos para Mapa, Onde Jogo Isso?, Denúncia e área B2B
- [ ] Layout responsivo

---

### #32 - Realizar avaliação heurística e ajustes de acessibilidade

**Labels:** `ux` `qualidade`
**Funcionalidade:** Qualidade
**Persona:** Todas
**Prioridade:** Média
**Milestone:** Sprint 4

**Descrição**
Cada integrante preenche o checklist de avaliação heurística em `docs/avaliacao/`, e a equipe corrige os problemas encontrados, incluindo os critérios de acessibilidade (RNF001, RNF002).

**Critérios de aceite**
- [ ] Um checklist preenchido por integrante
- [ ] Problemas registrados como issues de correção
- [ ] Contraste, textos alternativos e navegação por teclado revisados

---

### #33 - Escrever testes automatizados do backend

**Labels:** `backend` `qualidade`
**Funcionalidade:** Qualidade
**Persona:** Todas
**Prioridade:** Média
**Milestone:** Sprint 4

**Descrição**
Criar testes unitários e de integração com JUnit 5 e Mockito para os serviços e controllers principais.

**Critérios de aceite**
- [ ] Testes de pontos, resíduos, denúncias e coletas
- [ ] Todos os testes passando com `./mvnw test`

---

### #34 - Publicar o sistema (deploy)

**Labels:** `infraestrutura`
**Funcionalidade:** Infraestrutura
**Persona:** Todas
**Prioridade:** Média
**Milestone:** Sprint 4

**Descrição**
Publicar o frontend na Vercel e o backend no Render com PostgreSQL, e atualizar os links na documentação.

**Critérios de aceite**
- [ ] Frontend e backend acessíveis por URL pública
- [ ] Variáveis de ambiente configuradas
- [ ] Links atualizados no README e em `docs/README.md`

---

### #35 - Gravar vídeo de divulgação do projeto

**Labels:** `documentação`
**Funcionalidade:** Documentação
**Persona:** Todas
**Prioridade:** Média
**Milestone:** Sprint 4

**Descrição**
Gravar um vídeo curto apresentando o problema e a solução em linguagem simples e registrá-lo em `divulgacao/video/README.md` e em `docs/secoes/6_solucao-implementada.md`.

**Critérios de aceite**
- [ ] Vídeo publicado no YouTube
- [ ] Links adicionados à documentação

---

### #36 - Preparar apresentação final

**Labels:** `documentação`
**Funcionalidade:** Documentação
**Persona:** Todas
**Prioridade:** Alta
**Milestone:** Sprint 4

**Descrição**
Montar os slides no modelo da disciplina, contemplando todos os artefatos produzidos, e salvá-los em `divulgacao/apresentacao/`.

**Critérios de aceite**
- [ ] Slides com problema, personas, solução, demonstração e resultados
- [ ] Identidade visual do Reciclaki aplicada
- [ ] Arquivo PPTX ou PDF salvo no repositório

---

## Resumo do Board

| Coluna | Issues |
|--------|--------|
| **Done** | #1 a #6 |
| **In Progress** | #7 a #11 |
| **To Do** | #12 a #36 |

| Funcionalidade | Issues |
|----------------|--------|
| Mapa de Coleta | #16, #17, #18 |
| Onde Jogo Isso? | #19, #20, #21 |
| Denúncia Cidadã | #22, #23, #24 |
| Logística Reversa B2B | #25, #26, #27 |
| Painel de Impacto | #28, #29, #30 |
| Documentação | #1 a #5, #7, #8, #11, #35, #36 |
| Infraestrutura e Qualidade | #6, #12 a #15, #31 a #34 |

| Persona | Issues principais |
|---------|-------------------|
| Cidadão | #17, #18, #20, #21, #23, #29, #31 |
| Comércio B2B | #17, #19, #25, #26, #27 |
| Gestor Público | #16, #22, #24, #27, #28, #29, #30 |

---

[⬅ Voltar ao índice](README.md)
