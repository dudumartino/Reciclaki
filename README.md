# Reciclaki

O **Reciclaki** é um site responsivo que combate a **gestão inadequada e a desinformação sobre resíduos sólidos urbanos**. A plataforma reúne, em um só lugar, informações confiáveis sobre como e onde descartar cada tipo de resíduo, um mapa com os pontos de coleta da cidade, um canal para que cidadãos denunciem descartes irregulares e um módulo de logística reversa que conecta comércios geradores de recicláveis a cooperativas e recicladoras.

Com isso, o projeto busca aumentar a participação da população na coleta seletiva, facilitar o cumprimento da Política Nacional de Resíduos Sólidos (Lei nº 12.305/2010) pelos comércios e oferecer ao poder público indicadores que apoiem o planejamento e a fiscalização.

## Alunos integrantes da equipe

* Amanda Pimenta
* Bruna Scalabrini
* Davi Lavalle
* Eduardo Martino
* Maria Eduarda Brito
* Murilo Domene
* Túlio Furst

## Professores responsáveis

* Cleiton Silva
* Rommel Carneiro

## Documentação

A documentação completa do projeto está disponível em [`docs/README.md`](docs/README.md).

| Seção | Conteúdo |
|-------|----------|
| [Contexto](docs/secoes/1_contexto.md) | Problema, objetivos, justificativa e público-alvo |
| [Product Discovery](docs/secoes/2_product-discovery.md) | Matriz CSD, stakeholders, entrevistas, personas e mapas de empatia |
| [Product Design](docs/secoes/3_product-design.md) | Proposta de valor, requisitos, priorização, user flow, design system e wireframes |
| [Minimundo](docs/secoes/4_minimundo.md) | Descrição do cenário real modelado pelo sistema |
| [Metodologia](docs/secoes/5_metodologia.md) | Ferramentas, organização da equipe e Project Board |
| [Solução Implementada](docs/secoes/6_solucao-implementada.md) | Vídeo, módulos e APIs utilizados |
| [Referências](docs/secoes/7_referencias.md) | Referências bibliográficas |

## Principais funcionalidades

| Funcionalidade | Descrição | Personas |
|----------------|-----------|----------|
| **Mapa de Coleta** | Mapa interativo com ecopontos, pontos de coleta seletiva e cooperativas, com filtro por tipo de resíduo | Cidadão, Comércio B2B |
| **Logística Reversa B2B** | Solicitação e acompanhamento de coletas entre comércios e recicladoras, com comprovante de destinação | Comércio B2B, Gestor Público |
| **Painel de Impacto** | Indicadores de resíduos destinados, denúncias resolvidas e CO₂ evitado | Gestor Público, Cidadão, Comércio B2B |
| **Diretório "Onde Jogo Isso?"** | Busca que informa como e onde descartar cada item, com conteúdo contra mitos sobre reciclagem | Cidadão, Comércio B2B |
| **Denúncia Cidadã** | Registro de descarte irregular com foto e localização, com acompanhamento por protocolo | Cidadão, Gestor Público |

## Tecnologias

* **Frontend:** React, Vite, React Router, Axios, Leaflet (OpenStreetMap) e Chart.js
* **Backend:** Java 17, Spring Boot, Spring Data JPA, Spring Security (JWT) e Maven
* **Banco de dados:** PostgreSQL (produção) e H2 (desenvolvimento)
* **Gestão:** GitHub Projects e GitHub Issues

## Estrutura do repositório

```
Reciclaki/
├── codigo/                  # Código-fonte do projeto
│   ├── backend/             # API REST em Spring Boot
│   └── frontend/            # Aplicação web em React
├── divulgacao/
│   ├── apresentacao/        # Slides da apresentação
│   └── video/               # Vídeos de divulgação
├── docs/                    # Documentação do projeto
│   ├── avaliacao/           # Avaliações heurísticas
│   ├── files/               # Arquivos de apoio (PDFs)
│   ├── images/              # Imagens usadas na documentação
│   ├── secoes/              # Seções da documentação
│   ├── issues.md            # Planejamento das issues do Project Board
│   └── README.md            # Índice da documentação
├── CITATION.cff
├── LICENSE
└── README.md
```

## Como executar

Pré-requisitos: Node.js 18+, Java JDK 17+ e Maven 3.9+ (ou o Maven Wrapper incluso).

```bash
# Backend (http://localhost:8080)
cd codigo/backend
./mvnw spring-boot:run

# Frontend (http://localhost:5173) - em outro terminal
cd codigo/frontend
npm install
npm run dev
```

Instruções detalhadas em [`codigo/README.md`](codigo/README.md).


