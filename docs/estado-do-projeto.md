# My English — visão geral e validação

## Finalidade

My English é uma plataforma web introdutória para apoiar o aprendizado de inglês por meio de aulas temáticas, exercícios interativos, conteúdo contextualizado e materiais de revisão.

## Versão de referência

O código atual inclui o ajuste da visualização de PDFs em dispositivos móveis, com opção de abrir o material em tela cheia. O protótipo de áudio não faz parte do escopo atual.

Aplicação publicada: https://my-english-phi.vercel.app

## Componentes

- `index.html`: interface principal.
- `materiais/Aula_1.pdf` a `materiais/Aula_7.pdf`: PDFs esperados pela aplicação; a transferência desses arquivos ainda está pendente.
- `database/`: scripts SQL de manutenção, que precisam ser revisados e executados manualmente.
- `docs/plano-de-ensino.md`: temas e objetivos didáticos.

## Integrações

### Supabase

A aplicação utiliza a configuração do Supabase presente no código para acessar dados e recursos de autenticação. A presença de scripts SQL neste repositório não comprova que o banco ativo esteja sincronizado com eles. Revise os scripts e o estado do banco antes de executar alterações.

### Publicação

A aplicação publicada está disponível no endereço indicado acima. Alterações no código devem ser testadas antes de uma nova publicação. A configuração de hospedagem e o estado do banco devem ser validados no ambiente correspondente.

## Pendências de validação

- [ ] Adicionar os sete PDFs originais em `materiais/` com os nomes esperados.
- [ ] Conferir os caminhos dos PDFs no HTML.
- [ ] Testar autenticação e carregamento das aulas e questões.
- [ ] Testar a seção English na Prática.
- [ ] Validar a visualização dos PDFs em desktop e celular.
- [ ] Conferir se a documentação corresponde aos arquivos efetivamente versionados antes de publicar.

## Segurança e manutenção

Não incluir senhas, tokens privados ou chaves secretas no repositório. Antes de executar scripts SQL, revisar o conteúdo, confirmar o ambiente de destino e manter backup adequado.
