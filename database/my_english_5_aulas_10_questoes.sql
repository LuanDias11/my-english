-- My English: 5 novas aulas para iniciantes, com 10 questões cada.
-- Idempotente: não duplica aulas pelo título nem questões pelo enunciado dentro da aula.
-- Não apaga nem altera aulas, notas ou tentativas existentes.
begin;

do $$
declare
  v_lesson_id uuid;
  lesson_row record;
  q record;
begin
  for lesson_row in
    select * from (values
      ('Aula 3 — Rotina e hábitos', 'Fale sobre sua rotina, horários e hábitos usando o presente simples.', 'Nesta aula, você vai praticar frases sobre rotina. No presente simples, usamos o verbo na forma base com I, you, we e they. Com he, she e it, normalmente acrescentamos -s ou -es ao verbo. Exemplos: I work every day. / She works every day. Para perguntas, usamos do ou does.', 'beginner', 3),
      ('Aula 4 — Comida e pedidos', 'Peça comida, bebidas e a conta em situações simples.', 'Nesta aula, você vai praticar pedidos em cafés e restaurantes. “I''d like…” é uma forma educada de pedir algo. “Can I have…?” também é comum. Use “the menu” para cardápio e “the bill” ou “the check” para a conta.', 'beginner', 4),
      ('Aula 5 — Trabalho e rotina profissional', 'Use expressões básicas para falar de trabalho, reuniões e tarefas.', 'Nesta aula, você vai praticar inglês básico para o trabalho. “I work as…” significa “Eu trabalho como…”. “Meeting” significa reunião, “deadline” é prazo e “colleague” é colega de trabalho. Use “I have a meeting” para dizer que tem uma reunião.', 'beginner', 5),
      ('Aula 6 — Viagens e aeroporto', 'Pratique frases úteis para aeroporto, hotel e deslocamentos.', 'Nesta aula, você vai aprender frases úteis para viajar. “Boarding pass” é cartão de embarque, “luggage” é bagagem e “Where is…?” significa “Onde fica…?”. Para pedir ajuda, use “Could you help me, please?”.', 'beginner', 6),
      ('Aula 7 — Planos e convites', 'Faça convites simples, fale de planos e responda com naturalidade.', 'Nesta aula, você vai praticar convites e planos. “Would you like to…?” é uma forma educada de convidar alguém. “I''m going to…” é usado para planos. Respostas comuns incluem “That sounds great!” e “Sorry, I can''t”.', 'beginner', 7)
    ) as x(title, description, content, level, position)
  loop
    select l.id into v_lesson_id
    from public.lessons l
    where l.title = lesson_row.title
    order by l.created_at nulls last
    limit 1;

    if v_lesson_id is null then
      insert into public.lessons(title, description, content, level, published, position)
      values (lesson_row.title, lesson_row.description, lesson_row.content, lesson_row.level, true, lesson_row.position)
      returning id into v_lesson_id;
    end if;

    case lesson_row.title
      when 'Aula 3 — Rotina e hábitos' then
        for q in select * from (values
          ('Como dizer “Eu acordo às sete” em inglês?', '["I wake up at seven.", "I wakes up at seven.", "I waking up at seven."]'::jsonb, 0, 'Com I, use wake up, sem -s.', 1),
          ('Complete: “She ___ breakfast at home.”', '["have", "has", "having"]'::jsonb, 1, 'Com she no presente simples, use has.', 2),
          ('Qual pergunta significa “Você trabalha todos os dias?”', '["Do you work every day?", "Does you work every day?", "Are you work every day?"]'::jsonb, 0, 'Com you, usamos do para formar perguntas no presente simples.', 3),
          ('Complete: “They ___ to work by bus.”', '["go", "goes", "going"]'::jsonb, 0, 'Com they, usamos a forma base go.', 4),
          ('Como dizer “Ele não toma café”? ', '["He don''t drink coffee.", "He doesn''t drink coffee.", "He isn''t drink coffee."]'::jsonb, 1, 'Na negativa com he, use doesn''t + verbo na forma base.', 5),
          ('O que significa “usually”?', '["Raramente", "Geralmente", "Nunca"]'::jsonb, 1, 'Usually significa geralmente ou normalmente.', 6),
          ('Complete: “I ___ lunch at noon.”', '["have", "has", "having"]'::jsonb, 0, 'Com I, use have.', 7),
          ('Qual frase está correta?', '["She starts work at nine.", "She start work at nine.", "She starting work at nine."]'::jsonb, 0, 'Com she no presente simples afirmativo, acrescentamos -s: starts.', 8),
          ('Como perguntar “A que horas você termina?”', '["What time do you finish?", "What time you finish?", "What time are you finish?"]'::jsonb, 0, 'A estrutura é What time + do + sujeito + verbo.', 9),
          ('Qual expressão significa “nos fins de semana”?', '["At weekends only yesterday", "On weekends", "In weekend"]'::jsonb, 1, 'On weekends é uma forma comum de dizer nos fins de semana.', 10)
        ) as qdata(prompt, options, correct_index, explanation, position)
        loop
          if not exists (
            select 1 from public.questions
            where public.questions.lesson_id = v_lesson_id
              and public.questions.prompt = q.prompt
          ) then
            insert into public.questions(lesson_id, prompt, options, correct_index, explanation, position)
            values (v_lesson_id, q.prompt, q.options, q.correct_index, q.explanation, q.position);
          end if;
        end loop;
      when 'Aula 4 — Comida e pedidos' then
        for q in select * from (values
          ('Como pedir educadamente “Eu gostaria de um café, por favor”?', '["I''d like a coffee, please.", "I like coffee yesterday.", "I am like a coffee, please."]'::jsonb, 0, 'I''d like… é uma forma educada de fazer pedidos.', 1),
          ('O que significa “menu” em um restaurante?', '["Cardápio", "Cozinha", "Garçom"]'::jsonb, 0, 'Menu significa cardápio.', 2),
          ('Complete: “Can I ___ a glass of water?”', '["have", "has", "having"]'::jsonb, 0, 'Depois de can, use o verbo na forma base: have.', 3),
          ('Como pedir a conta?', '["Can I have the bill, please?", "Can I am the bill?", "Give me bill yesterday."]'::jsonb, 0, 'Can I have the bill, please? é uma forma educada de pedir a conta.', 4),
          ('Qual palavra significa “frango”?', '["Chicken", "Cheese", "Fish"]'::jsonb, 0, 'Chicken significa frango.', 5),
          ('O que significa “I''d like it without onions”?', '["Eu gostaria sem cebola.", "Eu gostaria de mais cebola.", "Eu não gosto de cozinhar."]'::jsonb, 0, 'Without significa sem; onions significa cebolas.', 6),
          ('Complete: “I am ___ allergic to peanuts.”', '["allergic", "menu", "waiter"]'::jsonb, 0, 'Allergic significa alérgico(a).', 7),
          ('Qual pergunta significa “Você tem uma mesa para duas pessoas?”', '["Do you have a table for two?", "Are you have table two?", "You have two table?"]'::jsonb, 0, 'Do you have…? é uma forma de perguntar se algo está disponível.', 8),
          ('O que significa “sparkling water”?', '["Água com gás", "Água quente", "Suco de maçã"]'::jsonb, 0, 'Sparkling water significa água com gás.', 9),
          ('Qual frase é mais educada para pedir algo?', '["Bring food now!", "Could I have some tea, please?", "You give tea."]'::jsonb, 1, 'Could I have…? é uma forma educada de fazer um pedido.', 10)
        ) as qdata(prompt, options, correct_index, explanation, position)
        loop
          if not exists (
            select 1 from public.questions
            where public.questions.lesson_id = v_lesson_id
              and public.questions.prompt = q.prompt
          ) then
            insert into public.questions(lesson_id, prompt, options, correct_index, explanation, position)
            values (v_lesson_id, q.prompt, q.options, q.correct_index, q.explanation, q.position);
          end if;
        end loop;
      when 'Aula 5 — Trabalho e rotina profissional' then
        for q in select * from (values
          ('Como dizer “Eu trabalho como analista de dados”?', '["I work as a data analyst.", "I working data analyst.", "I am work as data analyst."]'::jsonb, 0, 'A estrutura é I work as + profissão.', 1),
          ('O que significa “meeting”?', '["Reunião", "Férias", "Salário"]'::jsonb, 0, 'Meeting significa reunião.', 2),
          ('Complete: “I have a ___ at 10 a.m.”', '["meeting", "yesterday", "colleague"]'::jsonb, 0, 'Meeting é reunião; a frase significa “Tenho uma reunião às 10h”.', 3),
          ('Qual palavra significa “prazo” de uma tarefa?', '["Deadline", "Lunch", "Office"]'::jsonb, 0, 'Deadline significa prazo final.', 4),
          ('Como dizer “Vou enviar o relatório hoje”?', '["I''ll send the report today.", "I send yesterday the report.", "I am send report today."]'::jsonb, 0, 'I''ll é a contração de I will, usada para falar do futuro.', 5),
          ('O que significa “colleague”?', '["Colega de trabalho", "Cliente", "Gerente de banco"]'::jsonb, 0, 'Colleague significa colega de trabalho.', 6),
          ('Complete: “Could you ___ me with this task?”', '["help", "helps", "helping"]'::jsonb, 0, 'Depois de could, use o verbo na forma base: help.', 7),
          ('Qual frase significa “Estou trabalhando nisso”?', '["I''m working on it.", "I work it yesterday.", "I working on it."]'::jsonb, 0, 'I''m working on it usa o presente contínuo para uma ação em andamento.', 8),
          ('Como pedir para alguém repetir?', '["Could you repeat that, please?", "You repeat yesterday?", "Repeat you please could?"]'::jsonb, 0, 'Could you repeat that, please? é um pedido educado.', 9),
          ('O que significa “I’m available after lunch”?', '["Estou disponível depois do almoço.", "Estou de férias durante o almoço.", "Não tenho almoço hoje."]'::jsonb, 0, 'Available significa disponível.', 10)
        ) as qdata(prompt, options, correct_index, explanation, position)
        loop
          if not exists (
            select 1 from public.questions
            where public.questions.lesson_id = v_lesson_id
              and public.questions.prompt = q.prompt
          ) then
            insert into public.questions(lesson_id, prompt, options, correct_index, explanation, position)
            values (v_lesson_id, q.prompt, q.options, q.correct_index, q.explanation, q.position);
          end if;
        end loop;
      when 'Aula 6 — Viagens e aeroporto' then
        for q in select * from (values
          ('O que significa “boarding pass”?', '["Cartão de embarque", "Passaporte vencido", "Reserva de hotel"]'::jsonb, 0, 'Boarding pass é o cartão de embarque.', 1),
          ('Como perguntar “Onde fica o portão 12?”', '["Where is gate twelve?", "Where gate twelve are?", "Where does gate twelve?"]'::jsonb, 0, 'Use Where is…? para perguntar onde algo fica.', 2),
          ('Qual palavra significa “bagagem”?', '["Luggage", "Ticket", "Window"]'::jsonb, 0, 'Luggage significa bagagem.', 3),
          ('Como dizer “Tenho uma reserva em nome de Silva”?', '["I have a reservation under the name Silva.", "I am reservation Silva.", "I has a reservation named Silva."]'::jsonb, 0, 'A expressão comum é a reservation under the name…', 4),
          ('O que significa “one-way ticket”?', '["Passagem só de ida", "Passagem de ida e volta", "Bilhete de bagagem"]'::jsonb, 0, 'One-way ticket é uma passagem só de ida.', 5),
          ('Complete: “Where can I ___ a taxi?”', '["get", "gets", "getting"]'::jsonb, 0, 'Depois de can, use get na forma base.', 6),
          ('Como pedir ajuda educadamente?', '["Could you help me, please?", "You must help me now.", "Could you helping me?"]'::jsonb, 0, 'Could you help me, please? é um pedido educado.', 7),
          ('O que significa “check-in” no hotel ou aeroporto?', '["Registro de entrada", "Cancelamento", "Portão de embarque"]'::jsonb, 0, 'Check-in é o procedimento de registro de entrada.', 8),
          ('Qual frase significa “A que horas o voo parte?”', '["What time does the flight leave?", "What time the flight leaves?", "When does flight leaving?"]'::jsonb, 0, 'Na pergunta, use does + sujeito + verbo na forma base.', 9),
          ('Como dizer “Meu voo está atrasado”?', '["My flight is delayed.", "My flight has delay yesterday.", "My flight delayed is."]'::jsonb, 0, 'Is delayed significa está atrasado.', 10)
        ) as qdata(prompt, options, correct_index, explanation, position)
        loop
          if not exists (
            select 1 from public.questions
            where public.questions.lesson_id = v_lesson_id
              and public.questions.prompt = q.prompt
          ) then
            insert into public.questions(lesson_id, prompt, options, correct_index, explanation, position)
            values (v_lesson_id, q.prompt, q.options, q.correct_index, q.explanation, q.position);
          end if;
        end loop;
      when 'Aula 7 — Planos e convites' then
        for q in select * from (values
          ('Como convidar alguém para tomar um café de forma educada?', '["Would you like to get coffee?", "You want coffee yesterday?", "Would you liking coffee?"]'::jsonb, 0, 'Would you like to…? é uma forma educada de fazer um convite.', 1),
          ('O que significa “That sounds great!”?', '["Parece ótimo!", "Estou atrasado.", "Não entendi nada."]'::jsonb, 0, 'É uma resposta positiva a uma ideia ou convite.', 2),
          ('Complete: “I''m going ___ visit my family.”', '["to", "at", "for"]'::jsonb, 0, 'A estrutura para planos é be going to + verbo.', 3),
          ('Como dizer “Não posso hoje, desculpe”?', '["I can''t today, sorry.", "I don''t can today.", "I can''t to today, sorry."]'::jsonb, 0, 'Can’t expressa incapacidade ou indisponibilidade; não usamos to depois de can.', 4),
          ('O que significa “Are you free this weekend?”', '["Você está livre neste fim de semana?", "Você trabalha todo fim de semana?", "Você está viajando agora?"]'::jsonb, 0, 'Are you free…? pergunta se alguém está disponível.', 5),
          ('Qual resposta indica que você aceita um convite?', '["Sure, I''d love to!", "No, I am not yesterday.", "I can not to."]'::jsonb, 0, 'Sure, I''d love to! é uma resposta natural e positiva.', 6),
          ('Complete: “Let''s ___ a movie.”', '["watch", "watches", "watching"]'::jsonb, 0, 'Depois de let''s, usamos o verbo na forma base.', 7),
          ('O que significa “Maybe another time”?', '["Talvez em outra ocasião.", "Com certeza agora.", "Nunca mais."]'::jsonb, 0, 'É uma forma gentil de recusar ou adiar um convite.', 8),
          ('Como perguntar “Que tal sábado?”', '["How about Saturday?", "What about is Saturday?", "How Saturday about?"]'::jsonb, 0, 'How about + dia/atividade é uma forma comum de sugerir algo.', 9),
          ('Qual frase fala de um plano futuro?', '["I''m going to study tonight.", "I studied last night.", "I study every Monday."]'::jsonb, 0, 'I''m going to study tonight indica um plano para hoje à noite.', 10)
        ) as qdata(prompt, options, correct_index, explanation, position)
        loop
          if not exists (
            select 1 from public.questions
            where public.questions.lesson_id = v_lesson_id
              and public.questions.prompt = q.prompt
          ) then
            insert into public.questions(lesson_id, prompt, options, correct_index, explanation, position)
            values (v_lesson_id, q.prompt, q.options, q.correct_index, q.explanation, q.position);
          end if;
        end loop;
    end case;
    v_lesson_id := null;
  end loop;
end $$;

notify pgrst, 'reload schema';
commit;