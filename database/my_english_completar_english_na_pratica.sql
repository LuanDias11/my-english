-- My English | Completar atividades do English na Prática
-- Cria atividades e 3 questões originais para itens que ainda não têm atividade.
-- Idempotente: não duplica atividades já existentes nem apaga dados/tentativas.
-- Execute no SQL Editor do Supabase após conferir o projeto correto.

begin;

do $$
declare
  item record;
  v_rec_id uuid;
  v_activity_id uuid;
  q record;
begin
  for item in
    select * from (values
      ('Photograph', 'music', 'Listening & Vocabulary: Photograph',
       'Pratique vocabulário de lembranças, fotos e passado. Ouça a música em uma fonte autorizada e responda às questões sem consultar letras completas.',
       'memories', 'memórias',
       'Which word is related to pictures?', 'photograph', 'window', 'weather',
       'Choose the correct sentence about the past.', 'I visited my family yesterday.', 'I visit my family yesterday.', 'I visiting my family yesterday.',
       'What is a useful listening strategy?', 'Listen for familiar keywords.', 'Translate every sound immediately.', 'Stop whenever a word is unknown.'),
      ('Hello', 'music', 'Listening & Vocabulary: Hello',
       'Pratique saudações, sentimentos e compreensão da ideia geral. Ouça em uma fonte autorizada e depois responda às questões.',
       'hello', 'olá',
       'Which expression is a greeting?', 'Hello, how are you?', 'Close the window.', 'I bought a ticket.',
       'Choose the correct sentence.', 'I miss my friends.', 'I misses my friends.', 'I missing my friends.',
       'What can help you understand a song?', 'Notice repeated words and the general mood.', 'Memorize an unofficial full lyric.', 'Ignore the context.'),
      ('Blinding Lights', 'music', 'Listening & Vocabulary: Blinding Lights',
       'Pratique vocabulário de luzes, cidade e deslocamento, além de estratégias para entender uma música pop. Use uma fonte autorizada.',
       'lights', 'luzes',
       'What does “lights” mean?', 'Luzes', 'Janelas', 'Sapatos',
       'Choose the correct plural.', 'The lights are bright.', 'The lights is bright.', 'The lights be bright.',
       'If the singer speaks quickly, what should you do?', 'Listen again for key words.', 'Give up immediately.', 'Translate every word before continuing.'),
      ('Just the Way You Are', 'music', 'Listening & Vocabulary: Just the Way You Are',
       'Pratique adjetivos positivos e formas de descrever pessoas com respeito. Ouça em uma fonte autorizada e responda.',
       'beautiful', 'bonito(a)',
       'Which word is an adjective?', 'Beautiful', 'Quickly', 'Between',
       'Choose the correct sentence.', 'You are kind.', 'You is kind.', 'You be kind.',
       'Which question asks for a description?', 'What is she like?', 'Where is the station?', 'How much is the ticket?'),
      ('The Lazy Song', 'music', 'Listening & Vocabulary: The Lazy Song',
       'Pratique vocabulário de rotina, descanso e atividades do dia a dia. Ouça em uma fonte autorizada e responda.',
       'lazy', 'preguiçoso(a)',
       'What does “lazy” mean?', 'Preguiçoso(a)', 'Barulhento(a)', 'Faminto(a)',
       'Choose the correct daily-routine sentence.', 'I want to rest today.', 'I wants to rest today.', 'I wanting rest today.',
       'Which phrase is about free time?', 'Watch a movie.', 'Attend a meeting.', 'Catch a flight.'),
      ('The Scientist', 'music', 'Listening & Vocabulary: The Scientist',
       'Pratique vocabulário de perguntas, explicações e reflexão. Ouça em uma fonte autorizada e foque na ideia geral.',
       'why', 'por quê',
       'Which word is used to ask for a reason?', 'Why', 'Where', 'Who',
       'Choose the grammatically correct question.', 'Why are you here?', 'Why you are here?', 'Why is you here?',
       'What should you do when you miss a phrase?', 'Replay a short section and use context.', 'Assume the whole song is impossible.', 'Ignore every familiar word.'),
      ('Viva la Vida', 'music', 'Listening & Vocabulary: Viva la Vida',
       'Pratique vocabulário de passado, história e mudanças. Ouça em uma fonte autorizada e procure reconhecer palavras-chave.',
       'life', 'vida',
       'What does “life” mean?', 'Vida', 'Chuva', 'Rua',
       'Choose the correct past-tense sentence.', 'They were happy.', 'They was happy.', 'They be happy.',
       'Which strategy supports listening comprehension?', 'Identify the topic before focusing on details.', 'Focus only on one unknown word.', 'Avoid listening a second time.'),
      ('Sunflower', 'music', 'Listening & Vocabulary: Sunflower',
       'Pratique vocabulário de natureza, descrições e sentimentos. Ouça em uma fonte autorizada e responda às questões.',
       'flower', 'flor',
       'What is a “sunflower”?', 'Girassol', 'Estação de trem', 'Computador',
       'Choose the correct sentence.', 'The flower is yellow.', 'The flower are yellow.', 'The flower be yellow.',
       'Which is an adjective?', 'Bright', 'Carefully', 'Between'),
      ('Chemical', 'music', 'Listening & Vocabulary: Chemical',
       'Pratique vocabulário de sentimentos e relações, além de reconhecer palavras em contexto. Ouça em uma fonte autorizada.',
       'feeling', 'sentimento',
       'What does “feeling” mean?', 'Sentimento', 'Endereço', 'Horário',
       'Choose the correct sentence.', 'I feel tired.', 'I feels tired.', 'I feeling tired.',
       'What is a good way to learn new vocabulary?', 'Write the word with its meaning and an example.', 'Memorize words without context only.', 'Skip every unknown expression.'),
      ('Perfect', 'music', 'Listening & Vocabulary: Perfect',
       'Pratique adjetivos, sentimentos e vocabulário para descrever momentos especiais. Ouça em uma fonte autorizada.',
       'perfect', 'perfeito(a)',
       'What does “perfect” mean?', 'Perfeito(a)', 'Atrasado(a)', 'Vazio(a)',
       'Choose the correct sentence.', 'This is a beautiful day.', 'This are a beautiful day.', 'This be a beautiful day.',
       'Which phrase expresses a positive feeling?', 'I am happy.', 'I am yesterday.', 'I am under the table.'),
      ('Friends', 'series', 'Everyday English: Friends',
       'Pratique conversas entre amigos, convites e respostas cotidianas. Assista a um clipe autorizado e responda sem transcrever diálogos da série.',
       'hang out', 'passar tempo junto',
       'What does “hang out” mean in informal English?', 'Passar tempo junto', 'Fazer uma ligação oficial', 'Comprar uma passagem',
       'Choose a natural invitation.', 'Do you want to hang out?', 'Do you wants hang out?', 'You want hanging out?',
       'How can you practice with a short scene?', 'Listen for greetings, questions and reactions.', 'Copy an entire scene transcript.', 'Ignore who is speaking.'),
      ('The Office', 'series', 'Workplace English: The Office',
       'Pratique vocabulário de escritório, tarefas e comunicação profissional. Use um clipe autorizado e responda às questões.',
       'meeting', 'reunião',
       'What does “meeting” mean at work?', 'Reunião', 'Férias escolares', 'Receita culinária',
       'Choose the correct workplace sentence.', 'I have a meeting at ten.', 'I has a meeting at ten.', 'I having meeting at ten.',
       'Which phrase is suitable for asking for help at work?', 'Could you help me, please?', 'Give me this now, you.', 'You helps me yesterday?'),
      ('Modern Family', 'series', 'Everyday English: Modern Family',
       'Pratique vocabulário familiar, descrições e conversas do cotidiano. Assista a um clipe autorizado e responda.',
       'cousin', 'primo(a)',
       'What does “cousin” mean?', 'Primo(a)', 'Chefe', 'Vizinho(a) de mesa',
       'Choose the correct sentence.', 'My family is funny.', 'My family are funny is.', 'My family be funny.',
       'Which question asks about a family member?', 'Who is your sister?', 'How much is the train?', 'Where is my receipt?'),
      ('The Pursuit of Happyness', 'movie', 'Workplace English: The Pursuit of Happyness',
       'Pratique vocabulário de trabalho, objetivos e persistência. Assista ao trailer ou a um trecho autorizado e responda.',
       'job', 'emprego',
       'What does “job” mean?', 'Emprego', 'Janela', 'Almoço',
       'Choose the correct sentence.', 'She is looking for a job.', 'She are looking for a job.', 'She looking for a job.',
       'Which phrase is useful in a job interview?', 'I have experience in customer service.', 'I experience yesterday customer.', 'I am work since Monday yesterday.'),
      ('The Hangover', 'movie', 'Everyday English: The Hangover',
       'Pratique vocabulário informal de situações sociais e compreensão de contexto. O humor e a fala rápida podem exigir mais de uma audição.',
       'confused', 'confuso(a)',
       'What does “confused” mean?', 'Confuso(a)', 'Entusiasmado(a)', 'Pontual',
       'Choose the correct past-tense sentence.', 'We were at the hotel.', 'We was at the hotel.', 'We are at the hotel yesterday.',
       'When a comedy scene contains slang, what is best?', 'Use the situation and reactions to infer meaning.', 'Assume slang always has a literal translation.', 'Stop listening after one unfamiliar word.')
    ) as x(title, category, activity_title, instructions, target_word, target_meaning,
           p1, a1, b1, c1, p2, a2, b2, c2, p3, a3, b3, c3)
  loop
    select r.id into v_rec_id
    from public.recommendations r
    where lower(trim(r.title)) = lower(trim(item.title))
      and r.category = item.category
    order by r.published desc, r.position
    limit 1;

    if v_rec_id is null then
      raise notice 'Recomendação não encontrada; ignorando: % (%)', item.title, item.category;
      continue;
    end if;

    select a.id into v_activity_id
    from public.recommendation_activities a
    where a.recommendation_id = v_rec_id
    order by a.position
    limit 1;

    if v_activity_id is null then
      insert into public.recommendation_activities
        (recommendation_id, title, instructions, position, published)
      values
        (v_rec_id, item.activity_title, item.instructions, 1, true)
      returning id into v_activity_id;

      insert into public.recommendation_questions
        (activity_id, prompt, options, correct_index, explanation, position)
      values
        (v_activity_id, item.p1,
         jsonb_build_array(item.a1, item.b1, item.c1), 0,
         'Resposta correta: ' || item.a1 || '. ' ||
         case when item.title = 'Photograph' then 'A palavra photograph significa fotografia e está relacionada a imagens e lembranças.'
              when item.title = 'Hello' then 'Hello é uma saudação comum em inglês.'
              when item.title = 'Blinding Lights' then 'Lights é o plural de light e significa luzes.'
              when item.title = 'Just the Way You Are' then 'Beautiful é um adjetivo; adjetivos descrevem pessoas, lugares ou coisas.'
              when item.title = 'The Lazy Song' then 'Lazy significa preguiçoso(a).'
              when item.title = 'The Scientist' then 'Why é usado para perguntar o motivo ou a razão.'
              when item.title = 'Viva la Vida' then 'Life significa vida.'
              when item.title = 'Sunflower' then 'Sunflower significa girassol.'
              when item.title = 'Chemical' then 'Feeling significa sentimento ou sensação.'
              when item.title = 'Perfect' then 'Perfect significa perfeito(a).'
              when item.title = 'Friends' then 'Hang out é uma expressão informal para passar tempo com outras pessoas.'
              when item.title = 'The Office' then 'Meeting significa reunião.'
              when item.title = 'Modern Family' then 'Cousin significa primo ou prima.'
              when item.title = 'The Pursuit of Happyness' then 'Job significa emprego ou trabalho.'
              else 'Confused significa confuso(a).'
         end, 1),
        (v_activity_id, item.p2,
         jsonb_build_array(item.a2, item.b2, item.c2), 0,
         'A primeira alternativa é a correta. Observe a estrutura da frase e a forma verbal usada.', 2),
        (v_activity_id, item.p3,
         jsonb_build_array(item.a3, item.b3, item.c3), 0,
         'A primeira alternativa é a melhor estratégia para praticar listening: use o contexto, repita trechos curtos e preste atenção em palavras-chave.', 3);
    else
      raise notice 'Já existe atividade para %, não alterando nem duplicando.', item.title;
    end if;

    v_rec_id := null;
    v_activity_id := null;
  end loop;
end $$;

notify pgrst, 'reload schema';
commit;