# Reciclaki: Backend

API REST desenvolvida em **Java 17** com **Spring Boot** e **Maven**.

## Como executar

```bash
./mvnw spring-boot:run
```

No Windows:

```bash
mvnw.cmd spring-boot:run
```

- API: `http://localhost:8080/api`
- Swagger: `http://localhost:8080/swagger-ui.html`
- Console H2 (perfil `dev`): `http://localhost:8080/h2-console`

## Variáveis de ambiente (perfil `prod`)

| Variável | Exemplo |
|----------|---------|
| `DB_URL` | `jdbc:postgresql://localhost:5432/reciclaki` |
| `DB_USERNAME` | `postgres` |
| `DB_PASSWORD` | `sua_senha` |
| `JWT_SECRET` | chave secreta para assinatura dos tokens |

## Estrutura planejada

```
backend/
└── src/
    ├── main/
    │   ├── java/br/com/reciclaki/
    │   │   ├── config/        # Segurança, CORS, Swagger
    │   │   ├── controller/    # Endpoints REST
    │   │   ├── dto/           # Objetos de entrada e saída
    │   │   ├── model/         # Entidades JPA
    │   │   ├── repository/    # Interfaces Spring Data
    │   │   ├── service/       # Regras de negócio
    │   │   └── ReciclakiApplication.java
    │   └── resources/
    │       ├── application.yml
    │       └── data.sql       # Carga inicial de dados
    └── test/                  # Testes com JUnit 5 e Mockito
```

## Principais endpoints

| Método | Endpoint | Descrição | Acesso |
|--------|----------|-----------|--------|
| POST | `/api/auth/register` | Cadastro de usuário | Público |
| POST | `/api/auth/login` | Login | Público |
| GET | `/api/pontos` | Lista pontos de coleta | Público |
| POST | `/api/pontos` | Cadastra ponto de coleta | Gestor |
| GET | `/api/residuos?busca=` | Busca "Onde Jogo Isso?" | Público |
| POST | `/api/denuncias` | Registra denúncia | Cidadão |
| GET | `/api/denuncias/protocolo/{protocolo}` | Consulta denúncia | Público |
| PATCH | `/api/denuncias/{id}/status` | Atualiza status | Gestor |
| POST | `/api/coletas` | Solicita coleta B2B | Empresa |
| PATCH | `/api/coletas/{id}/status` | Atualiza coleta | Empresa recicladora |
| GET | `/api/indicadores/resumo` | Indicadores de impacto | Público / Gestor |
