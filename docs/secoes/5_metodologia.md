[⬅ Voltar ao índice](../README.md)

# Metodologia

Detalhes sobre a organização do grupo e o ferramental empregado.

## Ferramentas

| Ferramenta | Finalidade | Justificativa |
|------------|------------|---------------|
| **Visual Studio Code** | Editor do frontend | Leve, gratuito e com boas extensões para React |
| **IntelliJ IDEA Community** | Editor do backend | Suporte completo a Java, Maven e Spring Boot |
| **Git e GitHub** | Versionamento e repositório | Controle de versões e colaboração via Pull Requests |
| **GitHub Projects e Issues** | Gestão de tarefas | Integração direta com o código, as branches e os Pull Requests |
| **Miro** | Design Thinking | Quadro colaborativo para Matriz CSD, stakeholders e personas |
| **Figma** | Wireframes e protótipo | Edição colaborativa e protótipo navegável |
| **WhatsApp e Discord** | Comunicação | Comunicação rápida e reuniões por voz |
| **Postman** | Testes da API | Validação dos endpoints durante o desenvolvimento |
| **Vercel e Render** | Hospedagem | Planos gratuitos para frontend e backend |

## Gerenciamento do Projeto

### Processo de trabalho

O projeto combina **Design Thinking** e **Scrum**:

1. **Design Thinking** (imersão, definição e ideação) orientou o entendimento do problema, gerando a Matriz CSD, o mapa de stakeholders, as entrevistas, as personas e a proposta de valor.
2. **Scrum** organiza o desenvolvimento em sprints de duas semanas, com planejamento no início, acompanhamento semanal e revisão ao final de cada sprint.

| Sprint | Objetivo |
|--------|----------|
| **Sprint 1: Planejamento** | Repositório, contexto, Design Thinking, personas e requisitos |
| **Sprint 2: Design e Base** | Wireframes, protótipo, minimundo e configuração do frontend e do backend |
| **Sprint 3: Funcionalidades** | Mapa de Coleta, Onde Jogo Isso?, Denúncia Cidadã e Logística Reversa B2B |
| **Sprint 4: Entrega** | Painel de Impacto, testes, avaliação heurística, deploy, vídeo e apresentação |

### Divisão de papéis

| Integrante | Papel | Responsabilidades |
|------------|-------|-------------------|
| Nome do integrante 1 | Scrum Master e Backend | Condução das cerimônias, API e banco de dados |
| Nome do integrante 2 | Product Owner e Documentação | Priorização do backlog, documentação e apresentação |
| Nome do integrante 3 | Frontend | Telas, integração com a API e responsividade |
| Nome do integrante 4 | UX/UI e Frontend | Protótipo, design system e acessibilidade |

### Project Board (Kanban)

As tarefas são controladas no **GitHub Projects**, no layout Board, com as seguintes colunas:

| Coluna | Significado |
|--------|-------------|
| **Backlog** | Tarefas identificadas e ainda não priorizadas |
| **To Do** | Tarefas priorizadas para a sprint atual |
| **In Progress** | Tarefas em desenvolvimento, com responsável atribuído |
| **Review** | Pull Request aberto aguardando revisão |
| **Done** | Tarefas concluídas e integradas à branch `main` |

![Project Board do Reciclaki](../images/kanban.png)

Cada issue recebe **labels** de funcionalidade (`mapa-de-coleta`, `logistica-reversa`, `painel-de-impacto`, `onde-jogo-isso`, `denuncia-cidada`), de persona (`persona: cidadão`, `persona: comércio-b2b`, `persona: gestor-público`) e de tipo (`frontend`, `backend`, `documentação`, `ux`, `infraestrutura`, `qualidade`), além do **milestone** da sprint correspondente.

O planejamento completo das issues está em [Planejamento de Issues](../issues.md).

### Gestão de configuração

- A branch `main` contém apenas código revisado e funcional.
- Cada issue é desenvolvida em uma branch própria: `feature/<número>-<descrição>` (ex.: `feature/12-mapa-interativo`).
- A integração ocorre por **Pull Request**, com revisão de pelo menos um integrante e a referência `Closes #<número>` para fechar a issue automaticamente.
- Os commits seguem o padrão **Conventional Commits**:

| Prefixo | Uso |
|---------|-----|
| `feat:` | Nova funcionalidade |
| `fix:` | Correção de erro |
| `docs:` | Documentação |
| `style:` | Formatação, sem mudança de lógica |
| `refactor:` | Refatoração de código |
| `test:` | Testes |
| `chore:` | Configuração e manutenção |

---

[⬅ Anterior: Minimundo](4_minimundo.md) | [⬅ Voltar ao índice](../README.md) | [Próximo: Solução Implementada ➡](6_solucao-implementada.md)
