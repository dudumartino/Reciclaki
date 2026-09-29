[⬅ Voltar ao índice](../README.md)

# Contexto

Detalhes sobre o espaço de problema, os objetivos do projeto, sua justificativa e público-alvo.

## Problema

A geração de resíduos sólidos urbanos (RSU) cresce junto com as cidades, mas a forma como esses resíduos são separados, coletados e destinados ainda é inadequada em grande parte dos municípios brasileiros. Segundo o Panorama dos Resíduos Sólidos no Brasil (ABRELPE, 2022), o país gerou cerca de 81 milhões de toneladas de RSU em 2022, e aproximadamente 39% desse total ainda teve destinação inadequada, em lixões ou aterros controlados. A parcela efetivamente reciclada permanece baixa diante do potencial dos materiais descartados.

Esse cenário é agravado por dois fatores principais:

- **Desinformação da população:** muitos cidadãos não sabem separar corretamente os resíduos, confundem o que é ou não reciclável e desconhecem onde descartar itens especiais, como pilhas, baterias, eletrônicos, lâmpadas, medicamentos e óleo de cozinha. As informações disponíveis estão dispersas em sites de prefeituras, redes sociais e embalagens, muitas vezes de forma contraditória.
- **Gestão inadequada e falta de integração entre os envolvidos:** ecopontos e pontos de coleta existem, mas são pouco divulgados. Comércios que geram grandes volumes de papelão, plástico e óleo não têm um canal simples para destinar esses materiais a cooperativas e recicladoras. Já o poder público recebe denúncias de descarte irregular por canais dispersos e não dispõe de indicadores consolidados para planejar a coleta e a fiscalização.

Como consequência, surgem pontos de descarte irregular em calçadas, terrenos baldios e córregos, com impactos na saúde pública (proliferação de vetores de doenças), no meio ambiente (contaminação do solo e da água) e na drenagem urbana (entupimento de bueiros e enchentes). Além disso, materiais com valor econômico deixam de retornar à cadeia produtiva, reduzindo a renda de catadores e cooperativas.

O contexto de uso da solução é o ambiente urbano de um município de médio ou grande porte, envolvendo moradores, estabelecimentos comerciais, cooperativas de reciclagem e a secretaria municipal responsável pela limpeza urbana e pelo meio ambiente.

## Objetivos

### Objetivo geral

Desenvolver um site responsivo que reduza a desinformação e apoie a gestão adequada dos resíduos sólidos urbanos, conectando cidadãos, comércios e gestores públicos em uma única plataforma.

### Objetivos específicos

- Disponibilizar um diretório de consulta ("Onde Jogo Isso?") que informe, de forma simples, como preparar e onde descartar cada tipo de resíduo.
- Mapear e exibir em um mapa interativo os pontos de coleta seletiva, ecopontos e cooperativas, com filtro por tipo de material.
- Criar um canal de denúncia cidadã de descarte irregular, com registro de foto, localização e acompanhamento por protocolo.
- Implementar um módulo de logística reversa B2B que permita a comércios solicitar coletas a recicladoras e comprovar a destinação correta dos resíduos.
- Consolidar indicadores de impacto (volume destinado, denúncias resolvidas, CO₂ evitado) em um painel que apoie a tomada de decisão do gestor público.

## Justificativa

A Política Nacional de Resíduos Sólidos (Lei nº 12.305/2010) estabelece a responsabilidade compartilhada pelo ciclo de vida dos produtos, envolvendo cidadãos, setor empresarial e poder público. Na prática, porém, cada um desses atores enfrenta barreiras de informação e de comunicação que dificultam o cumprimento da lei.

A escolha do tema se justifica por:

- **Relevância social e ambiental:** o descarte inadequado afeta diretamente a saúde e a qualidade de vida da população, especialmente em regiões periféricas.
- **Barreira de informação como causa central:** grande parte dos erros de separação e descarte ocorre por falta de informação acessível no momento da decisão, o que pode ser resolvido com tecnologia de baixo custo.
- **Potencial econômico:** a destinação correta de recicláveis gera renda para cooperativas e reduz custos de aterramento para o município.
- **Ausência de uma solução integrada:** as iniciativas existentes costumam tratar apenas um dos aspectos (mapa de ecopontos, aplicativo de denúncia ou marketplace de recicláveis), sem integrar os três públicos envolvidos.

Os objetivos específicos foram definidos para atacar a desinformação (diretório e mapa), aumentar a participação cidadã (denúncia), viabilizar a logística reversa (módulo B2B) e dar transparência aos resultados (painel de impacto).

## Público-Alvo

A solução atende três perfis de usuários:

| Perfil | Descrição | Relação com a tecnologia |
|--------|-----------|--------------------------|
| **Cidadão** | Moradores do município, de 16 a 65 anos, que desejam descartar corretamente seus resíduos ou denunciar descartes irregulares. Possuem pouco conhecimento técnico sobre classificação de resíduos. | Utilizam principalmente o celular e esperam respostas rápidas e linguagem simples. |
| **Comércio B2B** | Donos e gerentes de mercados, restaurantes, lojas e pequenas empresas que geram volumes relevantes de recicláveis, além de cooperativas e empresas recicladoras que recebem esses materiais. | Utilizam computador no escritório e celular na rotina; valorizam praticidade e comprovação legal. |
| **Gestor Público** | Servidores da secretaria municipal de meio ambiente ou de limpeza urbana, responsáveis pelo planejamento da coleta e pela fiscalização. | Utilizam computador; precisam de relatórios, filtros e indicadores confiáveis. |

O detalhamento de cada perfil, com personas e mapas de empatia, está na seção [Product Discovery](2_product-discovery.md).

---

[⬅ Voltar ao índice](../README.md) | [Próximo: Product Discovery ➡](2_product-discovery.md)
