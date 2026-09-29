# Reciclaki: Frontend

Aplicação web responsiva desenvolvida em **React** com **Vite**.

## Como executar

```bash
npm install
npm run dev
```

Acesse: `http://localhost:5173`

## Variáveis de ambiente

Crie um arquivo `.env` nesta pasta:

```bash
VITE_API_URL=http://localhost:8080/api
```

## Estrutura planejada

```
frontend/
├── public/
└── src/
    ├── assets/        # Imagens e ícones usados na interface
    ├── components/    # Componentes reutilizáveis (Header, Footer, Card, Map...)
    ├── pages/         # Páginas (Home, Mapa, OndeJogoIsso, Denuncia, B2B, Painel)
    ├── services/      # Comunicação com a API (Axios)
    ├── hooks/         # Hooks personalizados
    ├── context/       # Contexto de autenticação
    ├── styles/        # Estilos globais e variáveis de tema
    ├── App.jsx
    └── main.jsx
```

## Scripts

| Comando | Descrição |
|---------|-----------|
| `npm run dev` | Inicia o servidor de desenvolvimento |
| `npm run build` | Gera a versão de produção em `dist/` |
| `npm run preview` | Visualiza a versão de produção localmente |
| `npm run lint` | Executa o ESLint |
