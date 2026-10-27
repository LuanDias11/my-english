# My English 🇬🇧

**Uma plataforma web para apoiar o aprendizado de inglês básico com aulas temáticas, exercícios interativos e materiais de revisão.**

O **My English** organiza o estudo em uma sequência progressiva de sete aulas, com situações práticas do cotidiano — de apresentações pessoais a viagens e convites. O projeto combina uma interface web leve com dados gerenciados no Supabase.

- **Aplicação publicada:** [my-english-phi.vercel.app](https://my-english-phi.vercel.app)
- **Repositório oficial:** [LuanDias11/my-english-completo](https://github.com/LuanDias11/my-english-completo)

> Este repositório é a fonte oficial para a manutenção e evolução do My English. O repositório anterior é mantido apenas como referência histórica.

## Objetivos do projeto

- Organizar o conteúdo de inglês básico em aulas temáticas e progressivas.
- Oferecer exercícios interativos para praticar e revisar o conteúdo.
- Reunir materiais de apoio em PDF junto à aplicação.
- Disponibilizar uma seção **English na Prática**, voltada à aplicação do idioma em situações concretas.
- Manter o conteúdo das aulas e questões estruturado em banco de dados.

## Funcionalidades

- Aulas organizadas por tema e nível introdutório.
- Questões interativas com feedback.
- Conteúdo de aulas e perguntas integrado ao Supabase.
- Área **English na Prática**.
- Materiais didáticos em PDF.
- Opção de abrir o PDF em tela cheia para facilitar o uso em dispositivos móveis.

## Conteúdo das aulas

| Aula | Tema |
|---|---|
| 1 | Cumprimentos, apresentações e verbo *to be* |
| 2 | Números e informações pessoais |
| 3 | Rotina e hábitos |
| 4 | Comida e pedidos |
| 5 | Trabalho e rotina profissional |
| 6 | Viagens e aeroporto |
| 7 | Planos e convites |

Consulte o [plano de ensino](docs/plano-de-ensino.md) para ver os objetivos e a organização didática.

## Tecnologias

- **HTML, CSS e JavaScript** — estrutura, estilos e interações da interface.
- **Supabase** — serviços de dados e autenticação utilizados pela aplicação.
- **SQL** — scripts de manutenção e atualização do conteúdo.
- **Vercel** — hospedagem da versão publicada.

## Estrutura do repositório

```text
my-english-completo/
├── index.html
├── materiais/
│   ├── Aula_1.pdf
│   ├── Aula_2.pdf
│   ├── Aula_3.pdf
│   ├── Aula_4.pdf
│   ├── Aula_5.pdf
│   ├── Aula_6.pdf
│   └── Aula_7.pdf
├── database/
│   ├── README.md
│   └── scripts SQL de manutenção
└── docs/
    ├── estado-do-projeto.md
    └── plano-de-ensino.md
```

**Nota sobre os materiais:** a aplicação referencia os PDFs pelos caminhos mostrados acima. A transferência dos sete arquivos binários para este repositório ainda está pendente; por isso, a estrutura ilustrada representa a organização pretendida e precisa ser conferida antes de considerar o repositório pronto para uma nova publicação.

## Executar e configurar

1. Clone este repositório.
2. Sirva o arquivo `index.html` por um servidor HTTP local ou por uma hospedagem estática.
3. Confira a configuração do Supabase utilizada pela aplicação e valide a autenticação e o carregamento dos dados.
4. Confirme que os sete PDFs estão presentes em `materiais/` e teste os links dos materiais.
5. Faça os testes funcionais antes de publicar uma nova versão.

A aplicação depende da configuração do Supabase; abrir apenas o HTML sem os serviços e dados necessários não garante o funcionamento completo.

## Banco de dados e scripts SQL

A pasta `database/` reúne scripts de referência para manutenção e atualização do conteúdo. Eles não são executados automaticamente pelo frontend. Antes de executar qualquer script, revise o SQL, compare-o com o estado atual do banco e faça um backup adequado.

A presença dos scripts neste repositório não significa que o banco Supabase ativo esteja sincronizado automaticamente com eles.

## Estado atual

A versão de referência inclui o ajuste de visualização dos PDFs em dispositivos móveis. **O protótipo de áudio não faz parte da versão oficial atual.**

Antes de conectar este repositório a uma nova implantação, conclua a transferência dos PDFs e valide aulas, questões, seção English na Prática e visualização dos materiais em desktop e celular. A publicação existente não é alterada automaticamente por mudanças neste repositório.

Veja a [documentação do estado do projeto](docs/estado-do-projeto.md) para acompanhar pendências e critérios de validação.
