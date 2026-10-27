-- My English | English na Prática: 20 novos itens de catálogo para iniciantes.
-- Cada item recebe uma atividade com 3 questões originais.
-- Idempotente: não duplica recomendações, atividades ou questões já cadastradas.
-- Não apaga nem altera registros ou tentativas existentes.
begin;

do $$
declare
  v_rec_id uuid;
  v_activity_id uuid;
  item record;
  q record;
begin
  for item in
    select * from (values
      ('A Thousand Years', 'Christina Perri', 'music', 'beginner', 'Pratique vocabulário de sentimentos, tempo e expressões usadas para falar de relacionamentos.', array['Feelings','Vocabulary','Listening']::text[], 'https://www.youtube.com/results?search_query=Christina+Perri+A+Thousand+Years+official', 19, 'feelings', 'sentimentos'),
      ('Shivers', 'Ed Sheeran', 'music', 'beginner', 'Reconheça adjetivos e expressões sobre emoções em uma música pop contemporânea.', array['Feelings','Adjectives','Listening']::text[], 'https://www.youtube.com/results?search_query=Ed+Sheeran+Shivers+official', 20, 'excited', 'animado'),
      ('Someone Like You', 'Adele', 'music', 'beginner', 'Pratique vocabulário de emoções e compreensão da ideia geral.', array['Feelings','Vocabulary','Listening']::text[], 'https://www.youtube.com/results?search_query=Adele+Someone+Like+You+official', 21, 'remember', 'lembrar'),
      ('Stay', 'The Kid LAROI & Justin Bieber', 'music', 'beginner', 'Observe verbos comuns e expressões curtas em inglês contemporâneo.', array['Common verbs','Listening','Vocabulary']::text[], 'https://www.youtube.com/results?search_query=The+Kid+LAROI+Justin+Bieber+Stay+official', 22, 'stay', 'ficar'),
      ('As It Was', 'Harry Styles', 'music', 'beginner', 'Trabalhe compreensão global e vocabulário frequente em contexto musical.', array['Listening','Vocabulary','Interpretation']::text[], 'https://www.youtube.com/results?search_query=Harry+Styles+As+It+Was+official', 23, 'change', 'mudança'),
      ('Bad Habits', 'Ed Sheeran', 'music', 'beginner', 'Aprenda vocabulário relacionado a hábitos e rotina.', array['Habits','Daily life','Listening']::text[], 'https://www.youtube.com/results?search_query=Ed+Sheeran+Bad+Habits+official', 24, 'habit', 'hábito'),
      ('Believer', 'Imagine Dragons', 'music', 'beginner', 'Pratique palavras relacionadas a esforço, sentimentos e superação.', array['Vocabulary','Feelings','Listening']::text[], 'https://www.youtube.com/results?search_query=Imagine+Dragons+Believer+official', 25, 'strong', 'forte'),
      ('Riptide', 'Vance Joy', 'music', 'beginner', 'Treine a identificação de palavras e a compreensão geral de uma canção.', array['Listening','Vocabulary','Interpretation']::text[], 'https://www.youtube.com/results?search_query=Vance+Joy+Riptide+official', 26, 'ocean', 'oceano'),
      ('Shake It Off', 'Taylor Swift', 'music', 'beginner', 'Pratique expressões informais e linguagem sobre reações às opiniões alheias.', array['Informal English','Expressions','Listening']::text[], 'https://www.youtube.com/results?search_query=Taylor+Swift+Shake+It+Off+official', 27, 'ignore', 'ignorar'),
      ('Roar', 'Katy Perry', 'music', 'beginner', 'Trabalhe vocabulário de confiança, coragem e autoexpressão.', array['Vocabulary','Adjectives','Listening']::text[], 'https://www.youtube.com/results?search_query=Katy+Perry+Roar+official', 28, 'brave', 'corajoso'),
      ('Brooklyn Nine-Nine', 'Brooklyn Nine-Nine', 'series', 'beginner', 'Pratique frases curtas, perguntas e vocabulário de trabalho em situações de comédia.', array['Workplace English','Conversation','Listening']::text[], 'https://www.youtube.com/results?search_query=Brooklyn+Nine-Nine+official+clips', 29, 'police station', 'delegacia'),
      ('Young Sheldon', 'Young Sheldon', 'series', 'beginner', 'Observe conversas familiares e vocabulário cotidiano com diálogos contextualizados.', array['Family','Everyday English','Listening']::text[], 'https://www.youtube.com/results?search_query=Young+Sheldon+official+clips', 30, 'family', 'família'),
      ('Gilmore Girls', 'Gilmore Girls', 'series', 'beginner', 'Pratique conversas rápidas e expressões usadas no cotidiano.', array['Conversation','Everyday expressions','Listening']::text[], 'https://www.youtube.com/results?search_query=Gilmore+Girls+official+clips', 31, 'conversation', 'conversa'),
      ('Suits', 'Suits', 'series', 'beginner', 'Conheça vocabulário básico de escritório, reuniões e comunicação profissional.', array['Workplace English','Meetings','Vocabulary']::text[], 'https://www.youtube.com/results?search_query=Suits+official+clips', 32, 'lawyer', 'advogado'),
      ('Extra English', 'Extra English', 'series', 'beginner', 'Série didática para iniciantes, com diálogos simples e vocabulário cotidiano.', array['Beginner listening','Everyday English','Vocabulary']::text[], 'https://www.youtube.com/results?search_query=Extra+English+episode+1', 33, 'apartment', 'apartamento'),
      ('The Intern', 'Filme', 'movie', 'beginner', 'Pratique vocabulário de trabalho, apresentação pessoal e convivência profissional.', array['Workplace English','Introductions','Listening']::text[], 'https://www.youtube.com/results?search_query=The+Intern+official+trailer', 34, 'intern', 'estagiário'),
      ('Finding Nemo', 'Filme', 'movie', 'beginner', 'Aprenda vocabulário de família, lugares e instruções simples.', array['Family','Places','Listening']::text[], 'https://www.youtube.com/results?search_query=Finding+Nemo+official+trailer', 35, 'ocean', 'oceano'),
      ('Toy Story', 'Filme', 'movie', 'beginner', 'Pratique descrições, objetos e expressões cotidianas em contexto.', array['Descriptions','Objects','Listening']::text[], 'https://www.youtube.com/results?search_query=Toy+Story+official+trailer', 36, 'toy', 'brinquedo'),
      ('The Devil Wears Prada', 'Filme', 'movie', 'beginner', 'Explore vocabulário básico de escritório, roupas e comunicação no trabalho.', array['Workplace English','Clothing','Vocabulary']::text[], 'https://www.youtube.com/results?search_query=The+Devil+Wears+Prada+official+trailer', 37, 'clothes', 'roupas'),
      ('Home Alone', 'Filme', 'movie', 'beginner', 'Pratique vocabulário de casa, família e situações do cotidiano.', array['Home','Family','Everyday English']::text[], 'https://www.youtube.com/results?search_query=Home+Alone+official+trailer', 38, 'home', 'casa')
    ) as x(title, creator, category, level, description, learning_goals, media_url, position, target_word, target_meaning)
  loop
    select r.id into v_rec_id
    from public.recommendations r
    where r.title = item.title
      and coalesce(r.creator, '') = coalesce(item.creator, '')
      and r.category = item.category
    limit 1;

    if v_rec_id is null then
      insert into public.recommendations(title, creator, category, level, description, learning_goals, media_url, published, position)
      values (item.title, item.creator, item.category, item.level, item.description, item.learning_goals, item.media_url, true, item.position)
      returning id into v_rec_id;
    end if;

    select a.id into v_activity_id
    from public.recommendation_activities a
    where a.recommendation_id = v_rec_id
      and a.title = 'Atividade inicial: ' || item.title
    limit 1;

    if v_activity_id is null then
      insert into public.recommendation_activities(recommendation_id, title, instructions, position, published)
      values (
        v_rec_id,
        'Atividade inicial: ' || item.title,
        'Assista ou ouça o conteúdo em uma fonte autorizada. Depois responda às perguntas. Os enunciados e as explicações estão em português; as alternativas ajudam você a praticar inglês.',
        1,
        true
      ) returning id into v_activity_id;
    end if;

    for q in
      select * from (values
        ('O que significa “' || item.target_word || '” em português?', jsonb_build_array(item.target_word, 'Desculpar-se', 'Esquecer'), 0, '“' || item.target_word || '” significa “' || item.target_meaning || '”.', 1),
        ('Escolha a frase correta em inglês.', jsonb_build_array('I can understand this word.', 'I can understands this word.', 'I can understanding this word.'), 0, 'Depois de can, usamos o verbo na forma base: understand.', 2),
        ('Qual estratégia ajuda mais na compreensão auditiva?', jsonb_build_array('Ouvir novamente e prestar atenção em palavras-chave.', 'Tentar traduzir todos os sons de uma vez.', 'Desistir ao ouvir uma palavra desconhecida.'), 0, 'Repetir trechos curtos e buscar palavras-chave ajuda a entender o contexto gradualmente.', 3)
      ) as qdata(prompt, options, correct_index, explanation, position)
    loop
      if not exists (
        select 1 from public.recommendation_questions rq
        where rq.activity_id = v_activity_id
          and rq.prompt = q.prompt
      ) then
        insert into public.recommendation_questions(activity_id, prompt, options, correct_index, explanation, position)
        values (v_activity_id, q.prompt, q.options, q.correct_index, q.explanation, q.position);
      end if;
    end loop;

    v_rec_id := null;
    v_activity_id := null;
  end loop;
end $$;

notify pgrst, 'reload schema';
commit;