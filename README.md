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

Os sete materiais didáticos estão versionados em `materiais/`, com os nomes esperados pela aplicação.

## Executar localmente

1. Clone o repositório.
2. Sirva o `index.html` por um servidor HTTP local ou por uma hospedagem estática.
3. Verifique a configuração do Supabase utilizada pela aplicação.
4. Teste autenticação, carregamento de aulas e questões, seção English na Prática e visualização dos PDFs em desktop e celular.

Como a aplicação depende da configuração do Supabase, abrir o HTML isoladamente não garante o funcionamento de todos os recursos.

## Banco de dados

A pasta `database/` contém scripts SQL de apoio à manutenção do conteúdo. Os scripts não são executados automaticamente pela aplicação. Antes de executar qualquer arquivo SQL, revise os comandos, confira o estado atual do banco e mantenha um backup apropriado.

## Desenvolvimento e escopo atual

O repositório reúne o código-fonte, os materiais didáticos e a documentação do My English. A versão atual inclui o ajuste de visualização dos PDFs em dispositivos móveis, com opção para abrir o material em tela cheia.

A aplicação publicada está disponível no link acima. Alterações futuras devem ser testadas para preservar o comportamento esperado.

## Documentação

- [Estado do projeto e checklist de validação](docs/estado-do-projeto.md)
- [Plano de ensino](docs/plano-de-ensino.md)
- [Orientações dos scripts SQL](database/README.md)
