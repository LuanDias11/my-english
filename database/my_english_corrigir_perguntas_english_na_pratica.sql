-- My English | Padronizar enunciados do English na Prática em português
-- Atualiza SOMENTE q.prompt. Não altera alternativas, correct_index, explicações,
-- pontuação, nem histórico de tentativas.
-- Seguro para executar novamente: só atualiza prompts que correspondem ao texto antigo.

begin;

with translations(title, old_prompt, new_prompt) as (
  values
    ('Blinding Lights', 'What does “lights” mean?', 'O que significa “lights” em português?'),
    ('Blinding Lights', 'Choose the correct plural.', 'Escolha a frase correta no plural.'),
    ('Blinding Lights', 'If the singer speaks quickly, what should you do?', 'Se o cantor falar rapidamente, o que você deve fazer?'),

    ('Chemical', 'What does “feeling” mean?', 'O que significa “feeling” em português?'),
    ('Chemical', 'Choose the correct sentence.', 'Escolha a frase correta em inglês.'),
    ('Chemical', 'What is a good way to learn new vocabulary?', 'Qual é uma boa maneira de aprender vocabulário novo?'),

    ('Friends', 'What does “hang out” mean in informal English?', 'O que significa “hang out” no inglês informal?'),
    ('Friends', 'Choose a natural invitation.', 'Escolha um convite natural em inglês.'),
    ('Friends', 'How can you practice with a short scene?', 'Como você pode praticar usando uma cena curta?'),

    ('Hello', 'Which expression is a greeting?', 'Qual expressão é uma saudação?'),
    ('Hello', 'Choose the correct sentence.', 'Escolha a frase correta em inglês.'),
    ('Hello', 'What can help you understand a song?', 'O que pode ajudar você a entender uma música?'),

    ('Just the Way You Are', 'Which word is an adjective?', 'Qual palavra é um adjetivo?'),
    ('Just the Way You Are', 'Choose the correct sentence.', 'Escolha a frase correta em inglês.'),
    ('Just the Way You Are', 'Which question asks for a description?', 'Qual pergunta é usada para pedir uma descrição?'),

    ('Modern Family', 'What does “cousin” mean?', 'O que significa “cousin” em português?'),
    ('Modern Family', 'Choose the correct sentence.', 'Escolha a frase correta em inglês.'),
    ('Modern Family', 'Which question asks about a family member?', 'Qual pergunta é sobre um membro da família?'),

    ('Perfect', 'What does “perfect” mean?', 'O que significa “perfect” em português?'),
    ('Perfect', 'Choose the correct sentence.', 'Escolha a frase correta em inglês.'),
    ('Perfect', 'Which phrase expresses a positive feeling?', 'Qual expressão transmite um sentimento positivo?'),

    ('Photograph', 'Which word is related to pictures?', 'Qual palavra está relacionada a fotografias?'),
    ('Photograph', 'Choose the correct sentence about the past.', 'Escolha a frase correta sobre o passado.'),
    ('Photograph', 'What is a useful listening strategy?', 'Qual é uma estratégia útil para a compreensão auditiva?'),

    ('Sunflower', 'What is a “sunflower”?', 'O que significa “sunflower” em português?'),
    ('Sunflower', 'Choose the correct sentence.', 'Escolha a frase correta em inglês.'),
    ('Sunflower', 'Which is an adjective?', 'Qual destas palavras é um adjetivo?'),

    ('The Hangover', 'What does “confused” mean?', 'O que significa “confused” em português?'),
    ('The Hangover', 'Choose the correct past-tense sentence.', 'Escolha a frase correta no passado.'),
    ('The Hangover', 'When a comedy scene contains slang, what is best?', 'Quando uma cena de comédia contém gírias, qual é a melhor estratégia?'),

    ('The Lazy Song', 'What does “lazy” mean?', 'O que significa “lazy” em português?'),
    ('The Lazy Song', 'Choose the correct daily-routine sentence.', 'Escolha a frase correta sobre a rotina diária.'),
    ('The Lazy Song', 'Which phrase is about free time?', 'Qual expressão está relacionada ao tempo livre?'),

    ('The Office', 'What does “meeting” mean at work?', 'O que significa “meeting” no contexto profissional?'),
    ('The Office', 'Choose the correct workplace sentence.', 'Escolha a frase correta no contexto profissional.'),
    ('The Office', 'Which phrase is suitable for asking for help at work?', 'Qual expressão é adequada para pedir ajuda no trabalho?')
),
updated as (
  update public.recommendation_questions q
  set prompt = t.new_prompt
  from translations t
  join public.recommendation_activities a on true
  join public.recommendations r on r.id = a.recommendation_id
  where q.activity_id = a.id
    and r.title = t.title
    and q.prompt = t.old_prompt
  returning r.title as conteudo, t.old_prompt as pergunta_antiga, q.prompt as pergunta_corrigida
)
select * from updated order by conteudo, pergunta_corrigida;

commit;