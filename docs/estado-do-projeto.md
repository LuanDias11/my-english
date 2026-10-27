# My English — visão geral do projeto

## Estado funcional

A plataforma está funcionando corretamente até o estágio atual do desenvolvimento, conforme validado no ambiente publicado: https://my-english-phi.vercel.app

A versão atual inclui o ajuste de visualização dos PDFs em dispositivos móveis, com opção para abrir o material em tela cheia.

## Componentes

- `index.html`: interface principal.
- `materiais/Aula_1.pdf` a `materiais/Aula_7.pdf`: materiais de apoio usados pela aplicação.
- `database/`: scripts SQL para manutenção e atualização do conteúdo.
- `docs/plano-de-ensino.md`: temas e objetivos didáticos.

## Integrações

### Supabase

A aplicação utiliza o Supabase configurado no código para acessar dados e recursos de autenticação. Os scripts SQL são executados manualmente para manutenção do banco; sua presença no repositório não significa que sejam executados automaticamente.

### Publicação

A aplicação está publicada em https://my-english-phi.vercel.app. A plataforma foi validada como funcional no estágio atual. Alterações futuras devem ser testadas antes de uma nova publicação.

## Organização dos materiais no repositório

A aplicação referencia os arquivos `materiais/Aula_1.pdf` até `materiais/Aula_7.pdf`. Os sete PDFs estão versionados nesta pasta com os nomes esperados pelo HTML. O código-fonte e os materiais de apoio estão reunidos no repositório.

## Boas práticas de manutenção

- Revisar scripts SQL antes de executá-los e manter backup adequado.
- Não versionar senhas, tokens privados ou chaves secretas.
- Validar alterações em aulas, questões, English na Prática e materiais antes de publicar.
