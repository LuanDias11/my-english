# My English 🇬🇧

**Plataforma de aprendizagem de inglês para iniciantes.**

A aplicação organiza aulas temáticas, questões interativas, vocabulário e atividades da seção **English na Prática**.

## Funcionalidades

- Aulas de inglês para iniciantes.
- Exercícios interativos com correção.
- Conteúdo de estudo carregado pelo Supabase.
- Autenticação e acompanhamento de progresso.
- Área English na Prática.
- Visualização dos materiais PDF com alternativa para abrir em tela cheia no celular.

## Tecnologias

- HTML, CSS e JavaScript
- Supabase (autenticação e banco de dados)
- Vercel (hospedagem)

## Estado da versão

Esta é a versão organizada a partir do estado acordado do projeto: **o ajuste dos PDFs para celular é a última alteração incluída**. O protótipo de áudio não faz parte desta versão.

## Materiais didáticos

A aplicação espera encontrar os arquivos em:

- `materiais/Aula_1.pdf`
- `materiais/Aula_2.pdf`
- `materiais/Aula_3.pdf`
- `materiais/Aula_4.pdf`
- `materiais/Aula_5.pdf`
- `materiais/Aula_6.pdf`
- `materiais/Aula_7.pdf`

Confira a pasta `materiais/` antes de publicar para garantir que os caminhos usados pela aplicação estão disponíveis.

## Supabase e SQL

O Supabase é necessário para os dados e autenticação da aplicação. Os scripts SQL podem ser mantidos em `database/` como documentação técnica, mas não são necessários para servir o HTML e não devem ser executados sem revisão. O estado do banco ativo não foi conferido automaticamente por este repositório.

## Executar localmente

Abra `index.html` em um servidor local simples ou conecte este repositório a um serviço de hospedagem estática. Como a aplicação depende do Supabase, o comportamento completo requer a configuração existente do projeto.

## Publicação

A versão publicada existente permanece em [my-english-phi.vercel.app](https://my-english-phi.vercel.app). Este novo repositório não altera a implantação atual por si só.

Mais detalhes em [docs/estado-do-projeto.md](docs/estado-do-projeto.md).
