# My English — Documentação do projeto

Plataforma web para estudo de inglês para iniciantes, construída com HTML, CSS e JavaScript, usando Supabase para autenticação e dados e Vercel para publicação.

## Estado desta versão

Esta versão reproduz o estado acordado do projeto: inclui o ajuste da visualização dos PDFs em dispositivos móveis, com uma opção para abrir o material em tela cheia. **Não inclui a etapa experimental de áudio**, que ficou para depois.

## Estrutura

- `index.html` — aplicação web.
- `materiais/Aula_1.pdf` até `materiais/Aula_7.pdf` — materiais didáticos referenciados pela aplicação.
- `docs/` — documentação do projeto.
- `database/` — scripts SQL históricos/de manutenção, se mantidos no repositório. Eles não são executados automaticamente pelo site.

## Publicação

O projeto atualmente publicado continua sendo https://my-english-phi.vercel.app. Este repositório novo não deve ser conectado/substituir a publicação antes de conferir a aplicação e os sete PDFs no próprio repositório.

## Supabase

A aplicação depende do projeto Supabase configurado no código. Mudanças no banco devem ser feitas separadamente, após revisão e backup. Os scripts SQL são referências de manutenção e **não garantem, por si só, que o estado atual do banco seja idêntico ao conteúdo dos arquivos**.

## Conferência antes de publicar

1. Confirmar que os sete arquivos PDF estão na pasta `materiais/` com os nomes referenciados pelo HTML.
2. Testar autenticação, listagem de aulas, questões e seção English na Prática.
3. Testar a abertura dos PDFs em desktop e celular.
4. Só depois, configurar uma nova implantação na Vercel se essa for a decisão desejada.
