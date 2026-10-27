-- My English: atualização segura das 75 perguntas aprovadas
-- Executar no SQL Editor do Supabase após conferir o backup.
-- Atualiza registros existentes por id + lesson_id; não insere nem apaga perguntas.
BEGIN;
DO $$
DECLARE
  atualizadas integer := 0;
  afetadas integer := 0;
BEGIN
  UPDATE public.questions
     SET prompt = 'O que significa “Hello” em português?',
         options = '["Tchau", "Olá", "Obrigado", "Por favor"]'::jsonb,
         correct_index = 1,
         explanation = '“Hello” significa “Olá” e é usado para cumprimentar alguém.',
         position = 1,
         lesson_id = '45393e1d-e052-4be1-b167-94182519a18e'
   WHERE id = '58e609d6-9607-4014-89df-8157fbbb41a8' AND lesson_id = '45393e1d-e052-4be1-b167-94182519a18e';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Como se diz “Bom dia” em inglês?',
         options = '["Good night", "Goodbye", "Good morning", "Good evening"]'::jsonb,
         correct_index = 2,
         explanation = '“Good morning” é usado para cumprimentar alguém pela manhã. “Good night” costuma ser usado ao se despedir ou ir dormir.',
         position = 2,
         lesson_id = '45393e1d-e052-4be1-b167-94182519a18e'
   WHERE id = '1291262f-2080-4241-89a4-22067ad8341b' AND lesson_id = '45393e1d-e052-4be1-b167-94182519a18e';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'O que significa “How are you?” em português?',
         options = '["Qual é o seu nome?", "Onde você mora?", "Quantos anos você tem?", "Como você está?"]'::jsonb,
         correct_index = 3,
         explanation = '“How are you?” significa “Como você está?”.',
         position = 3,
         lesson_id = '45393e1d-e052-4be1-b167-94182519a18e'
   WHERE id = '9fbceb03-8ae2-4957-b902-afdad0859bc0' AND lesson_id = '45393e1d-e052-4be1-b167-94182519a18e';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Escolha a forma correta de dizer “Meu nome é Ana” em inglês.',
         options = '["My name is Ana.", "I am Ana name.", "My is name Ana.", "Name my Ana."]'::jsonb,
         correct_index = 0,
         explanation = 'A estrutura natural é “My name is + nome”. Também é possível dizer “I’m Ana”.',
         position = 4,
         lesson_id = '45393e1d-e052-4be1-b167-94182519a18e'
   WHERE id = '014bca3a-3f2c-4217-a79d-ad1baa1a1ffb' AND lesson_id = '45393e1d-e052-4be1-b167-94182519a18e';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Em qual situação você costuma dizer “Goodbye”?',
         options = '["When you arrive in the morning", "When you say farewell", "When you ask someone’s name", "When you thank someone"]'::jsonb,
         correct_index = 1,
         explanation = '“Goodbye” é uma despedida, como “tchau” ou “até logo”.',
         position = 5,
         lesson_id = '45393e1d-e052-4be1-b167-94182519a18e'
   WHERE id = '8bcf4780-879a-4752-925e-d3194f9fa2d0' AND lesson_id = '45393e1d-e052-4be1-b167-94182519a18e';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Complete a frase em inglês: “I ___ Brazilian.”',
         options = '["am", "is", "are"]'::jsonb,
         correct_index = 0,
         explanation = 'Use “am” com o pronome “I”: “I am Brazilian”.',
         position = 6,
         lesson_id = '45393e1d-e052-4be1-b167-94182519a18e'
   WHERE id = '58824b82-162b-4cfa-a753-a158bcbc3691' AND lesson_id = '45393e1d-e052-4be1-b167-94182519a18e';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Complete a frase em inglês: “She ___ my friend.”',
         options = '["am", "is", "are"]'::jsonb,
         correct_index = 1,
         explanation = 'Use “is” com “he”, “she” e “it”: “She is my friend”.',
         position = 7,
         lesson_id = '45393e1d-e052-4be1-b167-94182519a18e'
   WHERE id = 'baa13084-939a-4710-a7d1-13cc552376be' AND lesson_id = '45393e1d-e052-4be1-b167-94182519a18e';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Complete a frase em inglês: “They ___ happy.”',
         options = '["am", "is", "are"]'::jsonb,
         correct_index = 2,
         explanation = 'Use “are” com “we”, “you” e “they”: “They are happy”.',
         position = 8,
         lesson_id = '45393e1d-e052-4be1-b167-94182519a18e'
   WHERE id = 'bd5afa28-29f8-4965-8a0b-aa5ed2a4a84b' AND lesson_id = '45393e1d-e052-4be1-b167-94182519a18e';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Escolha a forma negativa correta de “I am happy”.',
         options = '["I not am happy.", "I am not happy.", "I is not happy."]'::jsonb,
         correct_index = 1,
         explanation = 'Na negativa, coloque “not” depois do verbo to be: “I am not happy”.',
         position = 9,
         lesson_id = '45393e1d-e052-4be1-b167-94182519a18e'
   WHERE id = '4ee06af6-3c29-46ce-aaba-c04c371e7b1f' AND lesson_id = '45393e1d-e052-4be1-b167-94182519a18e';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Escolha a forma negativa correta de “He is a student”.',
         options = '["He isn’t a student.", "He aren’t a student.", "He not is a student."]'::jsonb,
         correct_index = 0,
         explanation = 'Com “he”, a forma é “he is not” ou a contração “he isn’t”.',
         position = 10,
         lesson_id = '45393e1d-e052-4be1-b167-94182519a18e'
   WHERE id = 'da6cab0d-7ced-4789-a2f1-87393dcf2ea1' AND lesson_id = '45393e1d-e052-4be1-b167-94182519a18e';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Transforme a frase “You are Brazilian” em uma pergunta.',
         options = '["You are Brazilian?", "Are you Brazilian?", "Is you Brazilian?"]'::jsonb,
         correct_index = 1,
         explanation = 'Em perguntas com o verbo to be, coloque “am/is/are” antes do sujeito: “Are you…?”.',
         position = 11,
         lesson_id = '45393e1d-e052-4be1-b167-94182519a18e'
   WHERE id = '6f90d632-bd74-403b-9f46-634fbc0ce843' AND lesson_id = '45393e1d-e052-4be1-b167-94182519a18e';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Transforme a frase “She is happy” em uma pergunta.',
         options = '["Is she happy?", "Are she happy?", "She is happy?"]'::jsonb,
         correct_index = 0,
         explanation = 'Com “she”, use “is” antes do sujeito: “Is she happy?”.',
         position = 12,
         lesson_id = '45393e1d-e052-4be1-b167-94182519a18e'
   WHERE id = 'f5c0531e-2c2c-42da-ac42-74b317c66ed9' AND lesson_id = '45393e1d-e052-4be1-b167-94182519a18e';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Como se diz “Eu sou brasileiro(a)” em inglês?',
         options = '["I have Brazilian.", "I am Brazilian.", "I are Brazilian."]'::jsonb,
         correct_index = 1,
         explanation = 'Para nacionalidade, use “I am” + nacionalidade: “I am Brazilian”.',
         position = 13,
         lesson_id = '45393e1d-e052-4be1-b167-94182519a18e'
   WHERE id = 'bc8f6602-e5b6-4427-86e5-d4c9a91c45dc' AND lesson_id = '45393e1d-e052-4be1-b167-94182519a18e';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Escolha a tradução correta de “Nós somos amigos” em inglês.',
         options = '["We is friends.", "We am friends.", "We are friends."]'::jsonb,
         correct_index = 2,
         explanation = 'Use “are” com “we”: “We are friends”.',
         position = 14,
         lesson_id = '45393e1d-e052-4be1-b167-94182519a18e'
   WHERE id = '25956e67-97d7-40f3-a049-36f3bdecfad0' AND lesson_id = '45393e1d-e052-4be1-b167-94182519a18e';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Complete a pergunta em inglês: “___ you ready?”',
         options = '["Am", "Is", "Are"]'::jsonb,
         correct_index = 2,
         explanation = 'A pergunta correta é “Are you ready?” porque “you” combina com “are”.',
         position = 15,
         lesson_id = '45393e1d-e052-4be1-b167-94182519a18e'
   WHERE id = '7806c30f-a3a1-42e2-a019-0bf6f77d776c' AND lesson_id = '45393e1d-e052-4be1-b167-94182519a18e';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Como se escreve o número 12 em inglês?',
         options = '["Twenty", "Twelve", "Twenty-one"]'::jsonb,
         correct_index = 1,
         explanation = 'O número 12 é escrito “twelve”.',
         position = 1,
         lesson_id = '9f4c8d21-6b73-4a10-9e52-2c8a7b5d3102'
   WHERE id = '4af10c8c-53b8-422f-8e5d-70289facba0c' AND lesson_id = '9f4c8d21-6b73-4a10-9e52-2c8a7b5d3102';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Qual número corresponde à palavra “forty”?',
         options = '["14", "40", "50"]'::jsonb,
         correct_index = 1,
         explanation = '“Forty” significa 40. Não confunda com “fourteen”, que significa 14.',
         position = 2,
         lesson_id = '9f4c8d21-6b73-4a10-9e52-2c8a7b5d3102'
   WHERE id = '7ed10c4e-5685-4c23-9880-af93534218b4' AND lesson_id = '9f4c8d21-6b73-4a10-9e52-2c8a7b5d3102';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Como se escreve o número 25 em inglês?',
         options = '["Twenty-five", "Twenty-four", "Twenty-fifteen"]'::jsonb,
         correct_index = 0,
         explanation = 'O número 25 é escrito “twenty-five”, com hífen.',
         position = 3,
         lesson_id = '9f4c8d21-6b73-4a10-9e52-2c8a7b5d3102'
   WHERE id = 'bf5f6e0e-6005-4890-a798-123550c6daa0' AND lesson_id = '9f4c8d21-6b73-4a10-9e52-2c8a7b5d3102';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Qual é a grafia correta do número 50 em inglês?',
         options = '["Fivety", "Fifty", "Fifteen"]'::jsonb,
         correct_index = 1,
         explanation = 'O número 50 é escrito “fifty”.',
         position = 4,
         lesson_id = '9f4c8d21-6b73-4a10-9e52-2c8a7b5d3102'
   WHERE id = 'cc14b0c1-15b0-41dd-bb10-07d800670de8' AND lesson_id = '9f4c8d21-6b73-4a10-9e52-2c8a7b5d3102';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Como se escreve o número 100 em inglês?',
         options = '["One thousand", "One hundred", "Ten hundred"]'::jsonb,
         correct_index = 1,
         explanation = '“One hundred” significa 100.',
         position = 5,
         lesson_id = '9f4c8d21-6b73-4a10-9e52-2c8a7b5d3102'
   WHERE id = 'fbf5e12d-9b98-4d86-88c2-7c78c6b22e72' AND lesson_id = '9f4c8d21-6b73-4a10-9e52-2c8a7b5d3102';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Complete a frase em inglês: “I ___ 23 years old.”',
         options = '["have", "am", "is"]'::jsonb,
         correct_index = 1,
         explanation = 'Em inglês, usamos “I am” para falar da idade: “I am 23 years old”.',
         position = 6,
         lesson_id = '9f4c8d21-6b73-4a10-9e52-2c8a7b5d3102'
   WHERE id = '4b9b37b8-5251-482d-956f-98e108ec3d6a' AND lesson_id = '9f4c8d21-6b73-4a10-9e52-2c8a7b5d3102';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Qual pergunta em inglês significa “Quantos anos você tem?”',
         options = '["How old are you?", "How are you from?", "How many you old?"]'::jsonb,
         correct_index = 0,
         explanation = 'A pergunta correta é “How old are you?”.',
         position = 7,
         lesson_id = '9f4c8d21-6b73-4a10-9e52-2c8a7b5d3102'
   WHERE id = '461fe4a0-eb1c-40be-82dc-05d560794b1b' AND lesson_id = '9f4c8d21-6b73-4a10-9e52-2c8a7b5d3102';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'O que significa a frase “I’m from Brazil”?',
         options = '["Eu tenho 20 anos.", "Eu sou do Brasil.", "Eu sou estudante."]'::jsonb,
         correct_index = 1,
         explanation = '“I’m from Brazil” significa “Eu sou do Brasil”.',
         position = 8,
         lesson_id = '9f4c8d21-6b73-4a10-9e52-2c8a7b5d3102'
   WHERE id = 'a8693ff3-a32a-4e90-84d2-77ba8d04d989' AND lesson_id = '9f4c8d21-6b73-4a10-9e52-2c8a7b5d3102';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Qual palavra indica a nacionalidade de uma pessoa do Brasil?',
         options = '["Brazil", "Brazilian", "Brasilian"]'::jsonb,
         correct_index = 1,
         explanation = '“Brazil” é o nome do país; “Brazilian” é a nacionalidade.',
         position = 9,
         lesson_id = '9f4c8d21-6b73-4a10-9e52-2c8a7b5d3102'
   WHERE id = '471accef-f5ce-4ec7-8b1b-0805500bf251' AND lesson_id = '9f4c8d21-6b73-4a10-9e52-2c8a7b5d3102';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Como se pergunta “De onde ela é?” em inglês?',
         options = '["Where she is from?", "Where are she from?", "Where is she from?"]'::jsonb,
         correct_index = 2,
         explanation = 'Com “she”, usamos “is”: “Where is she from?”.',
         position = 10,
         lesson_id = '9f4c8d21-6b73-4a10-9e52-2c8a7b5d3102'
   WHERE id = '6d041cf1-886e-43ca-b36d-2b91fa3e888f' AND lesson_id = '9f4c8d21-6b73-4a10-9e52-2c8a7b5d3102';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Como dizer “Eu acordo às sete” em inglês?',
         options = '["I wake up at seven.", "I wakes up at seven.", "I waking up at seven."]'::jsonb,
         correct_index = 0,
         explanation = 'Com “I”, usamos o verbo na forma base: “wake up”.',
         position = 1,
         lesson_id = '4d31e09a-7641-4d2c-9c74-25dc859f2a26'
   WHERE id = '4e921b38-91ee-4ea7-a0d1-68133d83255f' AND lesson_id = '4d31e09a-7641-4d2c-9c74-25dc859f2a26';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Complete a frase em inglês: “She ___ breakfast at home.”',
         options = '["have", "has", "having"]'::jsonb,
         correct_index = 1,
         explanation = 'Com “she” no presente simples afirmativo, usamos “has”.',
         position = 2,
         lesson_id = '4d31e09a-7641-4d2c-9c74-25dc859f2a26'
   WHERE id = '97105d99-8c3f-426d-af7f-10bd1d9b2921' AND lesson_id = '4d31e09a-7641-4d2c-9c74-25dc859f2a26';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Qual pergunta significa “Você trabalha todos os dias?”',
         options = '["Do you work every day?", "Does you work every day?", "Are you work every day?"]'::jsonb,
         correct_index = 0,
         explanation = 'Com “you”, usamos “do” para formar perguntas no presente simples.',
         position = 3,
         lesson_id = '4d31e09a-7641-4d2c-9c74-25dc859f2a26'
   WHERE id = '401d5d63-0a3e-4cf9-965b-ea2bc7a25531' AND lesson_id = '4d31e09a-7641-4d2c-9c74-25dc859f2a26';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Complete a frase em inglês: “They ___ to work by bus.”',
         options = '["go", "goes", "going"]'::jsonb,
         correct_index = 0,
         explanation = 'Com “they”, usamos o verbo na forma base: “go”.',
         position = 4,
         lesson_id = '4d31e09a-7641-4d2c-9c74-25dc859f2a26'
   WHERE id = '50bfaf74-44fe-4289-b809-e990bba2ea54' AND lesson_id = '4d31e09a-7641-4d2c-9c74-25dc859f2a26';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Como dizer “Ele não toma café” em inglês?',
         options = '["He don''t drink coffee.", "He doesn''t drink coffee.", "He isn''t drink coffee."]'::jsonb,
         correct_index = 1,
         explanation = 'Na negativa com “he”, usamos “doesn’t” + verbo na forma base.',
         position = 5,
         lesson_id = '4d31e09a-7641-4d2c-9c74-25dc859f2a26'
   WHERE id = 'b5fa9a9d-443d-4bdc-a9c8-be6c385cb84b' AND lesson_id = '4d31e09a-7641-4d2c-9c74-25dc859f2a26';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'O que significa a palavra “usually”?',
         options = '["Raramente", "Geralmente", "Nunca"]'::jsonb,
         correct_index = 1,
         explanation = '“Usually” significa “geralmente” ou “normalmente”.',
         position = 6,
         lesson_id = '4d31e09a-7641-4d2c-9c74-25dc859f2a26'
   WHERE id = 'aec6da02-a424-42d8-8aa0-e48eefa4ac0e' AND lesson_id = '4d31e09a-7641-4d2c-9c74-25dc859f2a26';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Complete a frase em inglês: “I ___ lunch at noon.”',
         options = '["have", "has", "having"]'::jsonb,
         correct_index = 0,
         explanation = 'Com “I”, usamos “have”, sem acrescentar “-s”.',
         position = 7,
         lesson_id = '4d31e09a-7641-4d2c-9c74-25dc859f2a26'
   WHERE id = '1d565317-68b7-447d-af26-3db19eb33767' AND lesson_id = '4d31e09a-7641-4d2c-9c74-25dc859f2a26';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Qual frase está correta para falar sobre a rotina dela?',
         options = '["She starts work at nine.", "She start work at nine.", "She starting work at nine."]'::jsonb,
         correct_index = 0,
         explanation = 'Com “she” no presente simples afirmativo, acrescentamos “-s” ao verbo: “starts”.',
         position = 8,
         lesson_id = '4d31e09a-7641-4d2c-9c74-25dc859f2a26'
   WHERE id = 'a68a0f27-0d94-4b71-844f-07189bfe2c3c' AND lesson_id = '4d31e09a-7641-4d2c-9c74-25dc859f2a26';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Como perguntar “A que horas você termina?” em inglês?',
         options = '["What time do you finish?", "What time you finish?", "What time are you finish?"]'::jsonb,
         correct_index = 0,
         explanation = 'A estrutura é “What time + do + sujeito + verbo” no presente simples.',
         position = 9,
         lesson_id = '4d31e09a-7641-4d2c-9c74-25dc859f2a26'
   WHERE id = 'e46fb648-5753-40b2-acbe-e5f80549fe5c' AND lesson_id = '4d31e09a-7641-4d2c-9c74-25dc859f2a26';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Qual expressão significa “nos fins de semana”?',
         options = '["At weekends only yesterday", "On weekends", "In weekend"]'::jsonb,
         correct_index = 1,
         explanation = '“On weekends” é uma forma comum de dizer “nos fins de semana”.',
         position = 10,
         lesson_id = '4d31e09a-7641-4d2c-9c74-25dc859f2a26'
   WHERE id = '761e7402-1e3b-4f3d-aa2f-20a021363755' AND lesson_id = '4d31e09a-7641-4d2c-9c74-25dc859f2a26';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Como pedir educadamente “Eu gostaria de um café, por favor”?',
         options = '["I''d like a coffee, please.", "I like coffee yesterday.", "I am like a coffee, please."]'::jsonb,
         correct_index = 0,
         explanation = 'I''d like… é uma forma educada de fazer um pedido.',
         position = 1,
         lesson_id = '7ae96536-2927-4f1e-a77c-031f76b1b4f0'
   WHERE id = 'f45bcc80-c20b-4dd8-83a2-4deeefdc4f3f' AND lesson_id = '7ae96536-2927-4f1e-a77c-031f76b1b4f0';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'O que significa “menu” em um restaurante?',
         options = '["Cardápio", "Cozinha", "Garçom"]'::jsonb,
         correct_index = 0,
         explanation = 'Menu significa cardápio.',
         position = 2,
         lesson_id = '7ae96536-2927-4f1e-a77c-031f76b1b4f0'
   WHERE id = '7e534a03-bce4-4f0b-9876-4334af72bdd8' AND lesson_id = '7ae96536-2927-4f1e-a77c-031f76b1b4f0';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Complete a frase em inglês: “Can I ___ a glass of water?”',
         options = '["have", "has", "having"]'::jsonb,
         correct_index = 0,
         explanation = 'Depois de can, use o verbo na forma base: have.',
         position = 3,
         lesson_id = '7ae96536-2927-4f1e-a77c-031f76b1b4f0'
   WHERE id = 'ce922092-24db-4646-96a6-8b35e1348737' AND lesson_id = '7ae96536-2927-4f1e-a77c-031f76b1b4f0';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Qual frase é uma forma educada de pedir a conta?',
         options = '["Can I have the bill, please?", "Can I am the bill?", "Give me bill yesterday."]'::jsonb,
         correct_index = 0,
         explanation = 'Can I have the bill, please? é uma forma educada de pedir a conta.',
         position = 4,
         lesson_id = '7ae96536-2927-4f1e-a77c-031f76b1b4f0'
   WHERE id = '8d2b86a0-dcb1-4502-aaed-d03d280a91f5' AND lesson_id = '7ae96536-2927-4f1e-a77c-031f76b1b4f0';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Qual palavra em inglês significa “frango”?',
         options = '["Chicken", "Cheese", "Fish"]'::jsonb,
         correct_index = 0,
         explanation = 'Chicken significa frango; cheese significa queijo e fish significa peixe.',
         position = 5,
         lesson_id = '7ae96536-2927-4f1e-a77c-031f76b1b4f0'
   WHERE id = 'd246f6b6-7376-4c52-900c-1eaeae23ebe0' AND lesson_id = '7ae96536-2927-4f1e-a77c-031f76b1b4f0';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'O que significa “I’d like it without onions”?',
         options = '["Eu gostaria sem cebola.", "Eu gostaria de mais cebola.", "Eu não gosto de cozinhar."]'::jsonb,
         correct_index = 0,
         explanation = 'Without significa “sem” e onions significa “cebolas”.',
         position = 6,
         lesson_id = '7ae96536-2927-4f1e-a77c-031f76b1b4f0'
   WHERE id = '4101c823-edbe-42dc-8f91-9cd3eaea78c9' AND lesson_id = '7ae96536-2927-4f1e-a77c-031f76b1b4f0';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Complete a frase em inglês: “I am ___ to peanuts.”',
         options = '["allergic", "menu", "waiter"]'::jsonb,
         correct_index = 0,
         explanation = 'Allergic significa alérgico(a). A frase significa “Sou alérgico(a) a amendoim”.',
         position = 7,
         lesson_id = '7ae96536-2927-4f1e-a77c-031f76b1b4f0'
   WHERE id = 'aad0e147-c317-4ee2-b17e-a8e8821ffcac' AND lesson_id = '7ae96536-2927-4f1e-a77c-031f76b1b4f0';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Qual pergunta significa “Você tem uma mesa para duas pessoas”?',
         options = '["Do you have a table for two?", "Are you have table two?", "You have two table?"]'::jsonb,
         correct_index = 0,
         explanation = 'Do you have…? é uma forma de perguntar se algo está disponível.',
         position = 8,
         lesson_id = '7ae96536-2927-4f1e-a77c-031f76b1b4f0'
   WHERE id = '9d7067af-ca54-4cf3-b51c-fa226100d406' AND lesson_id = '7ae96536-2927-4f1e-a77c-031f76b1b4f0';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'O que significa “sparkling water”?',
         options = '["Água com gás", "Água quente", "Suco de maçã"]'::jsonb,
         correct_index = 0,
         explanation = 'Sparkling water significa água com gás.',
         position = 9,
         lesson_id = '7ae96536-2927-4f1e-a77c-031f76b1b4f0'
   WHERE id = '5bd00e17-c9ac-4609-a611-514ba621067b' AND lesson_id = '7ae96536-2927-4f1e-a77c-031f76b1b4f0';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Qual frase é mais educada para pedir um chá?',
         options = '["Bring tea now!", "Could I have some tea, please?", "You give tea."]'::jsonb,
         correct_index = 1,
         explanation = 'Could I have…? é uma forma educada de fazer um pedido.',
         position = 10,
         lesson_id = '7ae96536-2927-4f1e-a77c-031f76b1b4f0'
   WHERE id = 'd775efee-1d96-4c17-ba9b-eb0ba4438d36' AND lesson_id = '7ae96536-2927-4f1e-a77c-031f76b1b4f0';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Complete a frase: “Tenho uma reunião ___ às 10h.”',
         options = '["at", "in", "on"]'::jsonb,
         correct_index = 0,
         explanation = 'Usamos “at” para horários específicos, como “at 10 a.m.”.',
         position = 1,
         lesson_id = '85e2bb55-ecd6-4804-8894-c202ce3fc168'
   WHERE id = '216e5c37-fc8a-49d3-a3cf-f7e883c18050' AND lesson_id = '85e2bb55-ecd6-4804-8894-c202ce3fc168';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Complete a frase: “Meu aniversário é ___ julho.”',
         options = '["at", "in", "on"]'::jsonb,
         correct_index = 1,
         explanation = 'Usamos “in” com meses: “in July”.',
         position = 2,
         lesson_id = '85e2bb55-ecd6-4804-8894-c202ce3fc168'
   WHERE id = '08c72f6d-3e49-4d37-8f25-b27967599695' AND lesson_id = '85e2bb55-ecd6-4804-8894-c202ce3fc168';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Complete a frase: “A reunião é ___ segunda-feira.”',
         options = '["at", "in", "on"]'::jsonb,
         correct_index = 2,
         explanation = 'Usamos “on” com dias da semana: “on Monday”.',
         position = 3,
         lesson_id = '85e2bb55-ecd6-4804-8894-c202ce3fc168'
   WHERE id = '3b4b239b-329c-4418-a3ac-6ea13c23389a' AND lesson_id = '85e2bb55-ecd6-4804-8894-c202ce3fc168';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Qual pergunta significa “Onde você trabalha?”?',
         options = '["Who do you work?", "Where do you work?", "When do you work?"]'::jsonb,
         correct_index = 1,
         explanation = '“Where” significa “onde” e é usado para perguntar sobre lugares.',
         position = 4,
         lesson_id = '85e2bb55-ecd6-4804-8894-c202ce3fc168'
   WHERE id = '5e974187-ec89-486e-bf2c-5ad6db27902a' AND lesson_id = '85e2bb55-ecd6-4804-8894-c202ce3fc168';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Qual palavra usamos para perguntar “quem”?',
         options = '["Who", "Where", "When"]'::jsonb,
         correct_index = 0,
         explanation = '“Who” significa “quem” e pergunta sobre pessoas.',
         position = 5,
         lesson_id = '85e2bb55-ecd6-4804-8894-c202ce3fc168'
   WHERE id = '6b6072e1-9c6d-4436-bc0b-a58d6bd306f6' AND lesson_id = '85e2bb55-ecd6-4804-8894-c202ce3fc168';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Complete a pergunta: “___ você começa a trabalhar?” — “Às nove horas.”',
         options = '["Who", "When", "Where"]'::jsonb,
         correct_index = 1,
         explanation = '“When” significa “quando” e é usado para perguntar sobre o momento em que algo acontece.',
         position = 6,
         lesson_id = '85e2bb55-ecd6-4804-8894-c202ce3fc168'
   WHERE id = 'b906b78e-6dd9-4428-8738-7fa54c5f1f5a' AND lesson_id = '85e2bb55-ecd6-4804-8894-c202ce3fc168';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Qual pergunta significa “Por que você está ocupado(a)?”?',
         options = '["What are you busy?", "Why are you busy?", "Who are you busy?"]'::jsonb,
         correct_index = 1,
         explanation = '“Why” significa “por que” e pergunta a razão de algo.',
         position = 7,
         lesson_id = '85e2bb55-ecd6-4804-8894-c202ce3fc168'
   WHERE id = 'c7437a99-8412-4847-ad9f-72b8b5fc9727' AND lesson_id = '85e2bb55-ecd6-4804-8894-c202ce3fc168';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Complete a pergunta: “___ é seu gerente?” — “O Sr. Brown.”',
         options = '["Who", "Where", "When"]'::jsonb,
         correct_index = 0,
         explanation = '“Who” pergunta quem é a pessoa. “Mr. Brown” é o nome de uma pessoa.',
         position = 8,
         lesson_id = '85e2bb55-ecd6-4804-8894-c202ce3fc168'
   WHERE id = '9070ecc5-d227-42b6-8884-ae363706a87f' AND lesson_id = '85e2bb55-ecd6-4804-8894-c202ce3fc168';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Qual frase usa a preposição corretamente?',
         options = '["I work in an office.", "I work on an office.", "I work at an office room every time."]'::jsonb,
         correct_index = 0,
         explanation = '“In an office” é uma forma comum de dizer “em um escritório”. “At” também pode indicar o local de trabalho em outros contextos.',
         position = 9,
         lesson_id = '85e2bb55-ecd6-4804-8894-c202ce3fc168'
   WHERE id = 'af5a561a-5e00-4c4c-8551-3dac2d9813ec' AND lesson_id = '85e2bb55-ecd6-4804-8894-c202ce3fc168';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Complete a frase: “Eu geralmente estudo inglês ___ à noite.”',
         options = '["at", "in", "on"]'::jsonb,
         correct_index = 0,
         explanation = 'A expressão padrão é “at night”, que significa “à noite”.',
         position = 10,
         lesson_id = '85e2bb55-ecd6-4804-8894-c202ce3fc168'
   WHERE id = 'a1edd4d1-0ba8-418b-8146-e27d17dd6ecb' AND lesson_id = '85e2bb55-ecd6-4804-8894-c202ce3fc168';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'O que significa “boarding pass”?',
         options = '["Cartão de embarque", "Passaporte vencido", "Reserva de hotel"]'::jsonb,
         correct_index = 0,
         explanation = '“Boarding pass” significa cartão de embarque.',
         position = 1,
         lesson_id = '72671dd1-942b-4eac-afb6-4250543873da'
   WHERE id = 'daa3eca1-2ae6-4b5e-8a92-9dfef7463fb7' AND lesson_id = '72671dd1-942b-4eac-afb6-4250543873da';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Como perguntar “Onde fica o portão 12?”',
         options = '["Where is gate twelve?", "Where gate twelve are?", "Where does gate twelve?"]'::jsonb,
         correct_index = 0,
         explanation = 'Use “Where is…?” para perguntar onde algo fica.',
         position = 2,
         lesson_id = '72671dd1-942b-4eac-afb6-4250543873da'
   WHERE id = '6d5a4b93-749f-40e1-9afc-9efa24c7cb68' AND lesson_id = '72671dd1-942b-4eac-afb6-4250543873da';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Qual palavra significa “bagagem”?',
         options = '["Luggage", "Ticket", "Window"]'::jsonb,
         correct_index = 0,
         explanation = '“Luggage” significa bagagem.',
         position = 3,
         lesson_id = '72671dd1-942b-4eac-afb6-4250543873da'
   WHERE id = '27052f16-bc4c-46ca-9a66-5b83e7c64618' AND lesson_id = '72671dd1-942b-4eac-afb6-4250543873da';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Como dizer “Tenho uma reserva em nome de Silva”?',
         options = '["I have a reservation under the name Silva.", "I am reservation Silva.", "I has a reservation named Silva."]'::jsonb,
         correct_index = 0,
         explanation = 'A expressão comum é “a reservation under the name…” — uma reserva em nome de…',
         position = 4,
         lesson_id = '72671dd1-942b-4eac-afb6-4250543873da'
   WHERE id = '8a4694ce-ae77-459c-a873-c5f3329bcb71' AND lesson_id = '72671dd1-942b-4eac-afb6-4250543873da';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'O que significa “one-way ticket”?',
         options = '["Passagem só de ida", "Passagem de ida e volta", "Bilhete de bagagem"]'::jsonb,
         correct_index = 0,
         explanation = '“One-way ticket” significa passagem só de ida.',
         position = 5,
         lesson_id = '72671dd1-942b-4eac-afb6-4250543873da'
   WHERE id = 'c6c50865-fa5b-4225-9a21-0ab45748840a' AND lesson_id = '72671dd1-942b-4eac-afb6-4250543873da';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Complete a frase: “Where can I ___ a taxi?”',
         options = '["get", "gets", "getting"]'::jsonb,
         correct_index = 0,
         explanation = 'Depois de “can”, use o verbo na forma base: “get”.',
         position = 6,
         lesson_id = '72671dd1-942b-4eac-afb6-4250543873da'
   WHERE id = 'e80e4e2c-b653-4f8f-9e18-ed56e46677d9' AND lesson_id = '72671dd1-942b-4eac-afb6-4250543873da';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Como pedir ajuda educadamente?',
         options = '["Could you help me, please?", "You must help me now.", "Could you helping me?"]'::jsonb,
         correct_index = 0,
         explanation = '“Could you help me, please?” é um pedido educado: “Você poderia me ajudar, por favor?”.',
         position = 7,
         lesson_id = '72671dd1-942b-4eac-afb6-4250543873da'
   WHERE id = '86da2267-1ae2-4004-b62b-090bbb65ebdf' AND lesson_id = '72671dd1-942b-4eac-afb6-4250543873da';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'O que significa “check-in” no hotel ou aeroporto?',
         options = '["Registro de entrada", "Cancelamento", "Portão de embarque"]'::jsonb,
         correct_index = 0,
         explanation = '“Check-in” é o procedimento de registro de entrada.',
         position = 8,
         lesson_id = '72671dd1-942b-4eac-afb6-4250543873da'
   WHERE id = 'c3f7ad29-60ab-4d26-b041-17718c42a8b4' AND lesson_id = '72671dd1-942b-4eac-afb6-4250543873da';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Qual frase significa “A que horas o voo parte?”',
         options = '["What time does the flight leave?", "What time the flight leaves?", "When does flight leaving?"]'::jsonb,
         correct_index = 0,
         explanation = 'Na pergunta, use “does” + sujeito + verbo na forma base: “What time does the flight leave?”.',
         position = 9,
         lesson_id = '72671dd1-942b-4eac-afb6-4250543873da'
   WHERE id = '261439a0-e793-4992-9c98-0eb63f95b8a0' AND lesson_id = '72671dd1-942b-4eac-afb6-4250543873da';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Como dizer “Meu voo está atrasado”?',
         options = '["My flight is delayed.", "My flight has delay yesterday.", "My flight delayed is."]'::jsonb,
         correct_index = 0,
         explanation = '“My flight is delayed” significa “Meu voo está atrasado”.',
         position = 10,
         lesson_id = '72671dd1-942b-4eac-afb6-4250543873da'
   WHERE id = 'dfcbe027-7770-4d7c-bd28-5f095a9dfd2d' AND lesson_id = '72671dd1-942b-4eac-afb6-4250543873da';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Como convidar alguém para tomar um café de forma educada?',
         options = '["Would you like to get coffee?", "You want coffee yesterday?", "Would you liking coffee?"]'::jsonb,
         correct_index = 0,
         explanation = 'Would you like to…? é uma forma educada de fazer um convite.',
         position = 1,
         lesson_id = '892dc8a5-1536-46ea-ac0b-382f60775425'
   WHERE id = 'e15b4e76-91ff-49a5-9339-e33a0f6a7f56' AND lesson_id = '892dc8a5-1536-46ea-ac0b-382f60775425';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'O que significa a expressão “That sounds great!”?',
         options = '["Parece ótimo!", "Estou atrasado.", "Não entendi nada."]'::jsonb,
         correct_index = 0,
         explanation = 'É uma resposta positiva a uma ideia ou convite.',
         position = 2,
         lesson_id = '892dc8a5-1536-46ea-ac0b-382f60775425'
   WHERE id = '25404601-46bc-4593-b69b-95b51b40149b' AND lesson_id = '892dc8a5-1536-46ea-ac0b-382f60775425';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Complete a frase: “I''m going ___ visit my family.”',
         options = '["to", "at", "for"]'::jsonb,
         correct_index = 0,
         explanation = 'A estrutura para falar de planos é be going to + verbo na forma base.',
         position = 3,
         lesson_id = '892dc8a5-1536-46ea-ac0b-382f60775425'
   WHERE id = '26f0e15e-bc22-47ba-bb63-588ca26382b8' AND lesson_id = '892dc8a5-1536-46ea-ac0b-382f60775425';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Como dizer “Não posso hoje, desculpe” em inglês?',
         options = '["I can''t today, sorry.", "I don''t can today.", "I can''t to today, sorry."]'::jsonb,
         correct_index = 0,
         explanation = 'Can''t expressa indisponibilidade; não usamos to depois de can.',
         position = 4,
         lesson_id = '892dc8a5-1536-46ea-ac0b-382f60775425'
   WHERE id = 'cfb649bc-9086-4052-a8e2-798a69095031' AND lesson_id = '892dc8a5-1536-46ea-ac0b-382f60775425';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'O que significa “Are you free this weekend?”?',
         options = '["Você está livre neste fim de semana?", "Você trabalha todo fim de semana?", "Você está viajando agora?"]'::jsonb,
         correct_index = 0,
         explanation = 'Are you free…? pergunta se alguém está disponível.',
         position = 5,
         lesson_id = '892dc8a5-1536-46ea-ac0b-382f60775425'
   WHERE id = '2c4d4f1f-d91a-4cd6-a4d0-3e6c2edf2c04' AND lesson_id = '892dc8a5-1536-46ea-ac0b-382f60775425';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Qual resposta indica que você aceita um convite?',
         options = '["Sure, I''d love to!", "No, I am not yesterday.", "I can not to."]'::jsonb,
         correct_index = 0,
         explanation = 'Sure, I''d love to! é uma resposta natural e positiva.',
         position = 6,
         lesson_id = '892dc8a5-1536-46ea-ac0b-382f60775425'
   WHERE id = 'e7800b7d-2147-4d74-9523-57a9af0ea446' AND lesson_id = '892dc8a5-1536-46ea-ac0b-382f60775425';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Complete a frase: “Let''s ___ a movie.”',
         options = '["watch", "watches", "watching"]'::jsonb,
         correct_index = 0,
         explanation = 'Depois de let''s, usamos o verbo na forma base.',
         position = 7,
         lesson_id = '892dc8a5-1536-46ea-ac0b-382f60775425'
   WHERE id = '75915e7f-f1a7-4a58-8abc-a282a5c2c47d' AND lesson_id = '892dc8a5-1536-46ea-ac0b-382f60775425';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'O que significa “Maybe another time”?',
         options = '["Talvez em outra ocasião.", "Com certeza agora.", "Nunca mais."]'::jsonb,
         correct_index = 0,
         explanation = 'É uma forma gentil de recusar ou adiar um convite.',
         position = 8,
         lesson_id = '892dc8a5-1536-46ea-ac0b-382f60775425'
   WHERE id = 'e6516788-5a55-4514-81ff-89d80829798b' AND lesson_id = '892dc8a5-1536-46ea-ac0b-382f60775425';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Como perguntar “Que tal sábado?” em inglês?',
         options = '["How about Saturday?", "What about is Saturday?", "How Saturday about?"]'::jsonb,
         correct_index = 0,
         explanation = 'How about + dia ou atividade é uma forma comum de sugerir algo.',
         position = 9,
         lesson_id = '892dc8a5-1536-46ea-ac0b-382f60775425'
   WHERE id = '92f6d654-8cab-433f-bb70-a73ca20991ee' AND lesson_id = '892dc8a5-1536-46ea-ac0b-382f60775425';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  UPDATE public.questions
     SET prompt = 'Qual frase expressa um plano futuro?',
         options = '["I''m going to study tonight.", "I studied last night.", "I study every Monday."]'::jsonb,
         correct_index = 0,
         explanation = 'I''m going to study tonight indica um plano para hoje à noite.',
         position = 10,
         lesson_id = '892dc8a5-1536-46ea-ac0b-382f60775425'
   WHERE id = '180b5120-4739-4f65-ac00-bb2dbd3a8079' AND lesson_id = '892dc8a5-1536-46ea-ac0b-382f60775425';
  GET DIAGNOSTICS afetadas = ROW_COUNT;
  atualizadas := atualizadas + afetadas;
  IF atualizadas <> 75 THEN
    RAISE EXCEPTION 'Esperadas 75 perguntas atualizadas, mas foram %; transação cancelada.', atualizadas;
  END IF;
  RAISE NOTICE 'Perguntas atualizadas: %', atualizadas;
END $$;
COMMIT;

-- Após executar, confira a tabela questions filtrando pelas 7 aulas.