# My English 🇬🇧

**Plataforma web de aprendizagem de inglês básico, com aulas temáticas, exercícios interativos e materiais de apoio.**

O My English foi desenvolvido para organizar o estudo de inglês em uma sequência introdutória e prática, aproximando o conteúdo de situações do dia a dia — como apresentações pessoais, rotina, pedidos em restaurantes, trabalho e viagens.

**Aplicação:** https://my-english-phi.vercel.app

## Funcionalidades

- Aulas temáticas organizadas em uma sequência progressiva.
- Exercícios interativos para praticar e revisar os conteúdos.
- Conteúdo de aulas e questões integrado ao Supabase.
- Seção **English na Prática**, com situações de uso do idioma.
- Materiais didáticos em PDF.
- Opção de abrir os PDFs em tela cheia para facilitar a leitura em dispositivos móveis.

## Conteúdo didático

| Aula | Tema |
|---|---|
| 1 | Cumprimentos, apresentações e verbo *to be* |
| 2 | Números e informações pessoais |
| 3 | Rotina e hábitos |
| 4 | Comida e pedidos |
| 5 | Trabalho e rotina profissional |
| 6 | Viagens e aeroporto |
| 7 | Planos e convites |

Veja o [plano de ensino](docs/plano-de-ensino.md) para consultar os objetivos de aprendizagem.

## Tecnologias utilizadas

- **HTML, CSS e JavaScript** — interface e interações do usuário.
- **Supabase** — integração com dados e autenticação.
- **SQL** — scripts para manutenção e atualização do conteúdo.
- **Vercel** — hospedagem da aplicação.

## Estrutura do projeto

```text
my-english-completo/
├── index.html
├── materiais/                 # PDFs de apoio das aulas
├── database/                  # Scripts SQL e instruções de manutenção
└── docs/                      # Documentação e plano de ensino
```

A aplicação espera os arquivos `materiais/Aula_1.pdf` até `materiais/Aula_7.pdf`. Esses arquivos ainda precisam ser transferidos para o repositório; portanto, a estrutura de materiais não está completa neste momento.

## Executar localmente

1. Clone o repositório.
2. Sirva o `index.html` por um servidor HTTP local ou por uma hospedagem estática.
3. Verifique a configuração do Supabase utilizada pela aplicação.
4. Adicione os sete PDFs à pasta `materiais/` e confira os caminhos referenciados no HTML.
5. Teste autenticação, carregamento de aulas e questões, seção English na Prática e visualização dos PDFs em desktop e celular.

Como a aplicação depende da configuração do Supabase, abrir o HTML isoladamente não garante o funcionamento de todos os recursos.

## Banco de dados

A pasta `database/` contém scripts SQL de apoio à manutenção do conteúdo. Os scripts não são executados automaticamente pela aplicação. Antes de executar qualquer arquivo SQL, revise os comandos, confira o estado atual do banco e mantenha um backup apropriado.

## Desenvolvimento e escopo atual

O código neste repositório representa a base de desenvolvimento do projeto. A versão de referência inclui o ajuste de visualização de PDFs em dispositivos móveis, com opção para abrir o material em tela cheia. O protótipo de áudio não faz parte do escopo atual.

Antes de considerar o projeto pronto para uma nova publicação, transfira os sete PDFs e valide os recursos integrados. A publicação existente não é alterada automaticamente por mudanças nos arquivos deste repositório.

## Documentação

- [Estado do projeto e checklist de validação](docs/estado-do-projeto.md)
- [Plano de ensino](docs/plano-de-ensino.md)
- [Orientações dos scripts SQL](database/README.md)
