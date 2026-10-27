# Estado do projeto — My English

## Repositório oficial

O repositório **[LuanDias11/my-english-completo](https://github.com/LuanDias11/my-english-completo)** é a fonte oficial para a manutenção e evolução do My English. O repositório anterior deve ser tratado apenas como referência histórica; novas alterações de desenvolvimento devem partir deste repositório.

## Versão de referência

A versão de referência é a versão acordada que inclui o ajuste de visualização dos PDFs em dispositivos móveis, com opção para abrir o material em tela cheia. **O protótipo de áudio está fora do escopo desta versão** e não deve substituir o `index.html` oficial.

Aplicação atualmente publicada: https://my-english-phi.vercel.app

## Componentes do projeto

- `index.html`: interface principal da aplicação.
- `materiais/Aula_1.pdf` a `materiais/Aula_7.pdf`: materiais de apoio referenciados pelo HTML.
- `database/`: scripts SQL de referência para manutenção e atualização do conteúdo.
- `docs/plano-de-ensino.md`: sequência temática e objetivos didáticos.

## Integrações

### Supabase

O frontend utiliza o Supabase configurado na aplicação para acessar os dados e os recursos de autenticação. A manutenção do banco é independente dos arquivos deste repositório: scripts SQL precisam ser revisados e executados manualmente no ambiente apropriado. Não presumir que o banco ativo corresponde exatamente aos scripts versionados sem uma conferência explícita.

### Vercel

A versão publicada permanece em https://my-english-phi.vercel.app. Atualizações neste repositório, por si só, não alteram a implantação existente. A publicação de uma versão a partir do repositório oficial deve ocorrer somente após a validação dos arquivos e do comportamento da aplicação.

## Pendências conhecidas

- [ ] Transferir para `materiais/` os sete PDFs originais, mantendo exatamente os nomes esperados pelo HTML.
- [ ] Conferir se os links dos sete PDFs resolvem corretamente no repositório.
- [ ] Testar autenticação e carregamento das aulas e questões com a configuração real do Supabase.
- [ ] Testar a seção English na Prática.
- [ ] Validar a abertura dos PDFs em desktop e celular.
- [ ] Revisar a configuração de publicação antes de qualquer nova implantação.

## Critérios para considerar a versão pronta para publicação

1. O `index.html` corresponde à versão aprovada e não contém o protótipo de áudio.
2. Os sete PDFs estão presentes, com nomes e caminhos corretos.
3. Aulas, questões e English na Prática funcionam com o banco configurado.
4. A visualização dos materiais foi testada em desktop e dispositivos móveis.
5. O README e esta documentação refletem o conteúdo realmente presente no repositório.

## Segurança e manutenção

Não versionar senhas, tokens privados ou chaves secretas. Antes de executar scripts SQL, revisar as instruções, confirmar o ambiente de destino e manter um backup apropriado. Os scripts versionados são referências de manutenção; não são executados automaticamente pela aplicação.
