-- My English: ampliar o conteúdo de estudo das Aulas 3 a 7
-- Este script SOMENTE atualiza o campo content das aulas existentes.
-- Não apaga aulas, questões, tentativas ou histórico.
begin;

update public.lessons
set content = $lesson$
<h3>1. O que você vai aprender</h3>
<p>Nesta aula, você vai aprender a falar sobre sua rotina, seus horários e hábitos. Ao final, deverá conseguir dizer a que horas acorda, quando trabalha e o que costuma fazer durante a semana.</p>

<h3>2. Presente simples (Simple Present)</h3>
<p>Usamos o presente simples para hábitos, rotinas e fatos que acontecem regularmente.</p>
<ul>
<li><b>I / You / We / They:</b> use o verbo na forma base. Exemplo: “I work every day.” — Eu trabalho todos os dias.</li>
<li><b>He / She / It:</b> normalmente acrescente <b>-s</b> ao verbo. Exemplo: “She works every day.” — Ela trabalha todos os dias.</li>
<li>Alguns verbos recebem <b>-es</b>, como “go → goes” e “watch → watches”.</li>
</ul>
<p>Mais exemplos: “I study English at night.” — Eu estudo inglês à noite. “He wakes up at six.” — Ele acorda às seis. “They have lunch at noon.” — Eles almoçam ao meio-dia.</p>

<h3>3. Como falar de horários</h3>
<p>Use <b>at</b> antes de horários específicos: “at seven” (às sete), “at 8:30” (às oito e meia), “at noon” (ao meio-dia).</p>
<ul>
<li>“I wake up at seven.” — Eu acordo às sete.</li>
<li>“I start work at nine.” — Eu começo a trabalhar às nove.</li>
<li>“I go to bed at eleven.” — Eu vou dormir às onze.</li>
</ul>

<h3>4. Perguntas com Do e Does</h3>
<p>Para perguntar sobre a rotina, comece com <b>Do</b> para I/you/we/they e com <b>Does</b> para he/she/it.</p>
<ul>
<li>“Do you work every day?” — Você trabalha todos os dias?</li>
<li>“Do they study at night?” — Eles estudam à noite?</li>
<li>“Does she live here?” — Ela mora aqui?</li>
</ul>
<p>Respostas curtas: “Yes, I do.” / “No, I don’t.” e “Yes, she does.” / “No, she doesn’t.”</p>

<h3>5. Como formar frases negativas</h3>
<p>Use <b>don’t</b> com I/you/we/they e <b>doesn’t</b> com he/she/it.</p>
<ul>
<li>“I don’t drink coffee.” — Eu não tomo café.</li>
<li>“They don’t work on Sundays.” — Eles não trabalham aos domingos.</li>
<li>“He doesn’t drive to work.” — Ele não vai ao trabalho dirigindo.</li>
</ul>
<p><b>Atenção:</b> depois de does/doesn’t, o verbo fica na forma base: “She doesn’t work”, e não “She doesn’t works”.</p>

<h3>6. Vocabulário essencial</h3>
<ul>
<li><b>wake up</b> — acordar; <b>get up</b> — levantar-se</li>
<li><b>have breakfast</b> — tomar café da manhã; <b>have lunch</b> — almoçar</li>
<li><b>go to work</b> — ir ao trabalho; <b>start work</b> — começar a trabalhar</li>
<li><b>finish</b> — terminar; <b>go home</b> — ir para casa; <b>go to bed</b> — ir dormir</li>
<li><b>usually</b> — geralmente; <b>sometimes</b> — às vezes; <b>never</b> — nunca</li>
<li><b>every day</b> — todos os dias; <b>on weekends</b> — nos fins de semana</li>
</ul>

<h3>7. Diálogo comentado</h3>
<p><b>Alex:</b> “What time do you wake up?” — A que horas você acorda?</p>
<p><b>Sam:</b> “I wake up at seven and have breakfast at seven thirty.” — Acordo às sete e tomo café às sete e meia.</p>
<p><b>Alex:</b> “Do you work from home?” — Você trabalha de casa?</p>
<p><b>Sam:</b> “Sometimes. I usually go to the office.” — Às vezes. Geralmente vou ao escritório.</p>
<p>Observe: “What time…?” pergunta o horário; “usually” indica algo que acontece normalmente; “sometimes” indica algo que acontece às vezes.</p>

<h3>8. Erros comuns</h3>
<ul>
<li>Incorreto: “She work at nine.” Correto: “She works at nine.”</li>
<li>Incorreto: “Does he works here?” Correto: “Does he work here?”</li>
<li>Incorreto: “I am wake up at seven.” Correto: “I wake up at seven.”</li>
</ul>

<h3>9. Resumo antes dos exercícios</h3>
<p>Use o presente simples para hábitos. Acrescente -s/-es com he, she e it em frases afirmativas. Use do/does para perguntas e don’t/doesn’t para negativas. Use “at” antes de horários específicos.</p>
$lesson$
where title = 'Aula 3 — Rotina e hábitos';

update public.lessons
set content = $lesson$
<h3>1. O que você vai aprender</h3>
<p>Nesta aula, você vai aprender a fazer pedidos em cafés e restaurantes, pedir o cardápio e a conta, indicar preferências e entender palavras comuns de comida e bebida.</p>

<h3>2. Como pedir algo com educação</h3>
<p>Uma forma natural e educada de pedir é <b>“I’d like…”</b>, que significa “Eu gostaria de…”. “I’d” é a forma curta de “I would”.</p>
<ul>
<li>“I’d like a coffee, please.” — Eu gostaria de um café, por favor.</li>
<li>“I’d like a chicken sandwich.” — Eu gostaria de um sanduíche de frango.</li>
<li>“I’d like some water.” — Eu gostaria de um pouco de água.</li>
</ul>
<p>Outra estrutura útil é <b>“Can I have…?”</b> — “Posso pedir…?” ou “Pode me trazer…?”.</p>
<ul>
<li>“Can I have the menu, please?” — Posso ver o cardápio, por favor?</li>
<li>“Can I have a glass of water?” — Pode me trazer um copo de água?</li>
</ul>

<h3>3. Palavras de cortesia</h3>
<p><b>Please</b> significa “por favor”; <b>thank you</b> significa “obrigado(a)”; <b>you’re welcome</b> significa “por nada”. “Excuse me” é usado para chamar alguém educadamente ou pedir licença.</p>
<p>Exemplo: “Excuse me, can I have the menu, please?” — Com licença, posso ver o cardápio, por favor?</p>

<h3>4. Cardápio, conta e preferências</h3>
<ul>
<li><b>menu</b> — cardápio; <b>bill / check</b> — conta</li>
<li><b>order</b> — pedido / pedir; <b>table</b> — mesa</li>
<li><b>without</b> — sem; <b>with</b> — com; <b>extra</b> — extra</li>
<li>“Could I have the bill, please?” — Poderia trazer a conta, por favor?</li>
<li>“I’d like it without onions.” — Eu gostaria sem cebola.</li>
<li>“Can I have extra cheese?” — Posso pedir queijo extra?</li>
</ul>

<h3>5. Comidas e bebidas</h3>
<ul>
<li><b>chicken</b> — frango; <b>beef</b> — carne bovina; <b>fish</b> — peixe</li>
<li><b>rice</b> — arroz; <b>bread</b> — pão; <b>cheese</b> — queijo</li>
<li><b>salad</b> — salada; <b>fries</b> — batatas fritas; <b>soup</b> — sopa</li>
<li><b>water</b> — água; <b>sparkling water</b> — água com gás; <b>still water</b> — água sem gás</li>
<li><b>coffee</b> — café; <b>tea</b> — chá; <b>juice</b> — suco</li>
</ul>

<h3>6. Alergias e restrições</h3>
<p>Para comunicar uma alergia, diga <b>“I’m allergic to…”</b> — “Sou alérgico(a) a…”.</p>
<ul>
<li>“I’m allergic to peanuts.” — Sou alérgico(a) a amendoim.</li>
<li>“Does this have milk?” — Isto contém leite?</li>
<li>“No onions, please.” — Sem cebola, por favor.</li>
</ul>
<p>Se tiver uma alergia importante, comunique-a claramente e confirme com o atendente os ingredientes do prato.</p>

<h3>7. Diálogo comentado</h3>
<p><b>Customer:</b> “Hi! I’d like a chicken sandwich, please.” — Olá! Eu gostaria de um sanduíche de frango, por favor.</p>
<p><b>Waiter:</b> “Would you like something to drink?” — Gostaria de algo para beber?</p>
<p><b>Customer:</b> “Yes, can I have sparkling water?” — Sim, pode me trazer água com gás?</p>
<p><b>Customer:</b> “Could I have the bill, please?” — Poderia trazer a conta, por favor?</p>
<p>“Would you like…?” é uma maneira de oferecer algo. “Could I have…?” é uma forma educada de fazer um pedido.</p>

<h3>8. Erros comuns</h3>
<ul>
<li>Depois de can/could, use o verbo base: “Can I have…?”, não “Can I having…?”.</li>
<li>“I’d like” significa “eu gostaria”; não use “I am like”.</li>
<li>“Menu” é cardápio; “bill/check” é conta.</li>
</ul>

<h3>9. Resumo antes dos exercícios</h3>
<p>Use “I’d like…” e “Can/Could I have…?” para pedir algo. Acrescente “please” para soar mais educado. Aprenda os nomes dos alimentos e use “without” para pedir algo sem determinado ingrediente.</p>
$lesson$
where title = 'Aula 4 — Comida e pedidos';

update public.lessons
set content = $lesson$
<h3>1. O que você vai aprender</h3>
<p>Nesta aula, você vai praticar inglês para falar da sua profissão, descrever tarefas, participar de reuniões, combinar prazos e pedir ajuda no ambiente de trabalho.</p>

<h3>2. Falando sobre profissão e local de trabalho</h3>
<ul>
<li><b>“I work as…”</b> — Eu trabalho como… Exemplo: “I work as a data analyst.” — Eu trabalho como analista de dados.</li>
<li><b>“I work in…”</b> — Eu trabalho em… Exemplo: “I work in an office.” — Eu trabalho em um escritório.</li>
<li><b>“I work with data.”</b> — Eu trabalho com dados.</li>
<li><b>“I work from home.”</b> — Eu trabalho de casa.</li>
</ul>
<p>Profissões úteis: teacher (professor[a]), developer (desenvolvedor[a]), analyst (analista), manager (gerente), designer (designer) e assistant (assistente).</p>

<h3>3. Vocabulário do dia a dia profissional</h3>
<ul>
<li><b>meeting</b> — reunião; <b>schedule</b> — agenda / agendar</li>
<li><b>task</b> — tarefa; <b>project</b> — projeto; <b>team</b> — equipe</li>
<li><b>deadline</b> — prazo final; <b>report</b> — relatório; <b>file</b> — arquivo</li>
<li><b>colleague</b> — colega de trabalho; <b>client</b> — cliente; <b>manager</b> — gerente</li>
<li><b>available</b> — disponível; <b>busy</b> — ocupado(a); <b>finished</b> — concluído</li>
</ul>

<h3>4. Falando sobre horários e reuniões</h3>
<ul>
<li>“I have a meeting at ten a.m.” — Tenho uma reunião às dez da manhã.</li>
<li>“The meeting starts at two.” — A reunião começa às duas.</li>
<li>“Are you available this afternoon?” — Você está disponível hoje à tarde?</li>
<li>“I’m busy right now.” — Estou ocupado(a) neste momento.</li>
<li>“Can we meet tomorrow?” — Podemos nos reunir amanhã?</li>
</ul>
<p>Use “at” com horários específicos: at 10 a.m. (às 10h). “This afternoon” significa “hoje à tarde” e “tomorrow” significa “amanhã”.</p>

<h3>5. Pedindo ajuda e esclarecimentos</h3>
<ul>
<li>“Could you help me with this task?” — Você poderia me ajudar com esta tarefa?</li>
<li>“Could you repeat that, please?” — Poderia repetir, por favor?</li>
<li>“Could you speak more slowly?” — Poderia falar mais devagar?</li>
<li>“I don’t understand.” — Eu não entendo.</li>
<li>“What does this mean?” — O que isso significa?</li>
</ul>
<p>“Could you…?” é uma forma educada de pedir que alguém faça algo. Depois de could, use o verbo na forma base: could help, could repeat, could send.</p>

<h3>6. Falar sobre tarefas e prazos</h3>
<ul>
<li>“I’m working on the report.” — Estou trabalhando no relatório.</li>
<li>“I’ll send the file today.” — Vou enviar o arquivo hoje.</li>
<li>“The deadline is Friday.” — O prazo final é sexta-feira.</li>
<li>“The task is finished.” — A tarefa está concluída.</li>
<li>“I need more time.” — Preciso de mais tempo.</li>
</ul>
<p>“I’m working” descreve uma ação em andamento. “I’ll send” expressa uma decisão ou ação futura (“vou enviar”).</p>

<h3>7. Diálogo comentado</h3>
<p><b>Alex:</b> “Do you have a meeting today?” — Você tem uma reunião hoje?</p>
<p><b>Sam:</b> “Yes, at ten a.m.” — Sim, às dez da manhã.</p>
<p><b>Alex:</b> “Could you send the report today?” — Você poderia enviar o relatório hoje?</p>
<p><b>Sam:</b> “Sure. I’ll send it this afternoon.” — Claro. Vou enviá-lo hoje à tarde.</p>
<p>“Sure” significa “claro”. “Send the report” é enviar o relatório; “this afternoon” é hoje à tarde.</p>

<h3>8. Erros comuns</h3>
<ul>
<li>Incorreto: “I am work as an analyst.” Correto: “I work as an analyst.”</li>
<li>Incorreto: “Could you helping me?” Correto: “Could you help me?”</li>
<li>Incorreto: “I have meeting.” Mais natural: “I have a meeting.”</li>
</ul>

<h3>9. Resumo antes dos exercícios</h3>
<p>Use “I work as…” para falar da profissão, “I have a meeting” para falar de reuniões e “Could you…?” para pedir ajuda. “Deadline” é prazo final, “task” é tarefa e “report” é relatório.</p>
$lesson$
where title = 'Aula 5 — Trabalho e rotina profissional';

update public.lessons
set content = $lesson$
<h3>1. O que você vai aprender</h3>
<p>Nesta aula, você vai aprender expressões úteis para se orientar no aeroporto, falar sobre voos e bagagens, fazer check-in e pedir ajuda durante uma viagem.</p>

<h3>2. Vocabulário de aeroporto</h3>
<ul>
<li><b>airport</b> — aeroporto; <b>flight</b> — voo; <b>airline</b> — companhia aérea</li>
<li><b>boarding pass</b> — cartão de embarque; <b>passport</b> — passaporte</li>
<li><b>gate</b> — portão de embarque; <b>departure</b> — partida; <b>arrival</b> — chegada</li>
<li><b>luggage / baggage</b> — bagagem; <b>suitcase</b> — mala; <b>security</b> — segurança</li>
<li><b>delayed</b> — atrasado; <b>cancelled</b> — cancelado; <b>ticket</b> — passagem / bilhete</li>
</ul>

<h3>3. Perguntando onde fica algo</h3>
<p>Use <b>“Where is…?”</b> para perguntar “Onde fica…?”.</p>
<ul>
<li>“Where is gate twelve?” — Onde fica o portão 12?</li>
<li>“Where is the bathroom?” — Onde fica o banheiro?</li>
<li>“Where is baggage claim?” — Onde fica a área de retirada de bagagem?</li>
</ul>
<p>Para perguntar como chegar a um lugar, você também pode usar “How do I get to…?” — “Como chego a…?”.</p>

<h3>4. Falando sobre o voo</h3>
<ul>
<li>“What time does the flight leave?” — A que horas o voo parte?</li>
<li>“Is the flight on time?” — O voo está no horário?</li>
<li>“My flight is delayed.” — Meu voo está atrasado.</li>
<li>“Where is the departure gate?” — Onde fica o portão de embarque?</li>
<li>“I have a connecting flight.” — Tenho um voo de conexão.</li>
</ul>
<p>Em perguntas no presente simples, usamos “does” com he/she/it. Por isso: “What time does the flight leave?” O verbo principal fica na forma base: leave, e não leaves.</p>

<h3>5. Check-in e hospedagem</h3>
<ul>
<li>“I have a reservation.” — Tenho uma reserva.</li>
<li>“I have a reservation under the name Silva.” — Tenho uma reserva em nome de Silva.</li>
<li>“I’d like to check in.” — Gostaria de fazer o check-in.</li>
<li>“What time is check-out?” — A que horas é o check-out?</li>
<li>“Is breakfast included?” — O café da manhã está incluído?</li>
</ul>
<p>“Check-in” é o registro de entrada; “check-out” é a saída. “Under the name…” significa “em nome de…”.</p>

<h3>6. Transporte e pedidos de ajuda</h3>
<ul>
<li>“Where can I get a taxi?” — Onde posso pegar um táxi?</li>
<li>“How much is a ticket to the city center?” — Quanto custa uma passagem até o centro?</li>
<li>“I need help with my luggage.” — Preciso de ajuda com minha bagagem.</li>
<li>“Could you help me, please?” — Você poderia me ajudar, por favor?</li>
<li><b>one-way ticket</b> — passagem só de ida; <b>round-trip ticket</b> — passagem de ida e volta.</li>
</ul>

<h3>7. Diálogo comentado</h3>
<p><b>Traveler:</b> “Excuse me, where is gate twelve?” — Com licença, onde fica o portão 12?</p>
<p><b>Staff:</b> “It’s on your left.” — Fica à sua esquerda.</p>
<p><b>Traveler:</b> “Could you help me with my luggage, please?” — Poderia me ajudar com minha bagagem, por favor?</p>
<p><b>Staff:</b> “Of course.” — Claro.</p>
<p>“Excuse me” chama a atenção educadamente. “On your left” significa “à sua esquerda”; “of course” significa “claro”.</p>

<h3>8. Erros comuns</h3>
<ul>
<li>Incorreto: “Where gate is?” Correto: “Where is the gate?”</li>
<li>Incorreto: “Does the flight leaves?” Correto: “Does the flight leave?”</li>
<li>“Luggage” normalmente é usado como substantivo incontável; diga “my luggage”, não “my luggages”.</li>
</ul>

<h3>9. Resumo antes dos exercícios</h3>
<p>Memorize as palavras “boarding pass”, “gate”, “luggage” e “flight”. Use “Where is…?” para perguntar onde fica algo, “Could you help me…?” para pedir ajuda e “I have a reservation under the name…” no hotel.</p>
$lesson$
where title = 'Aula 6 — Viagens e aeroporto';

update public.lessons
set content = $lesson$
<h3>1. O que você vai aprender</h3>
<p>Nesta aula, você vai aprender a convidar alguém para fazer algo, falar sobre planos futuros e aceitar ou recusar convites de maneira educada.</p>

<h3>2. Fazendo convites</h3>
<p>Use <b>“Would you like to…?”</b> para fazer um convite de forma educada. Depois dessa expressão, use um verbo.</p>
<ul>
<li>“Would you like to get coffee?” — Você gostaria de tomar um café?</li>
<li>“Would you like to watch a movie?” — Você gostaria de assistir a um filme?</li>
<li>“Would you like to have dinner with me?” — Você gostaria de jantar comigo?</li>
</ul>
<p>Outras formas mais diretas e informais:</p>
<ul>
<li>“Let’s go out.” — Vamos sair.</li>
<li>“Let’s watch a movie.” — Vamos assistir a um filme.</li>
<li>“How about Saturday?” — Que tal sábado?</li>
</ul>
<p>Depois de “Let’s”, use o verbo na forma base: “Let’s go”, “Let’s watch”.</p>

<h3>3. Falando sobre disponibilidade</h3>
<ul>
<li>“Are you free this weekend?” — Você está livre neste fim de semana?</li>
<li>“Are you busy tonight?” — Você está ocupado(a) hoje à noite?</li>
<li>“What are you doing tomorrow?” — O que você vai fazer amanhã?</li>
<li>“I’m free on Saturday.” — Estou livre no sábado.</li>
<li>“Sorry, I’m busy.” — Desculpe, estou ocupado(a).</li>
</ul>
<p>“Tonight” significa “hoje à noite”; “tomorrow” significa “amanhã”; “this weekend” significa “neste fim de semana”.</p>

<h3>4. Falando de planos futuros com going to</h3>
<p>Use <b>am/is/are + going to + verbo</b> para falar de planos ou intenções.</p>
<ul>
<li>“I’m going to study tonight.” — Vou estudar hoje à noite.</li>
<li>“She’s going to visit her family.” — Ela vai visitar a família.</li>
<li>“We’re going to travel next month.” — Vamos viajar no próximo mês.</li>
</ul>
<p>Forma negativa: “I’m not going to work tomorrow.” — Não vou trabalhar amanhã.</p>
<p>Pergunta: “Are you going to travel?” — Você vai viajar?</p>

<h3>5. Aceitando e recusando convites</h3>
<ul>
<li>“Sure, I’d love to!” — Claro, eu adoraria!</li>
<li>“That sounds great!” — Parece ótimo!</li>
<li>“Yes, why not?” — Sim, por que não?</li>
<li>“Sorry, I can’t today.” — Desculpe, não posso hoje.</li>
<li>“Maybe another time.” — Talvez em outra ocasião.</li>
<li>“I’d love to, but I’m busy.” — Eu adoraria, mas estou ocupado(a).</li>
</ul>
<p>Ao recusar, uma frase curta de desculpa ajuda a manter a resposta educada.</p>

<h3>6. Dias e expressões de tempo</h3>
<ul>
<li><b>today</b> — hoje; <b>tomorrow</b> — amanhã; <b>tonight</b> — hoje à noite</li>
<li><b>this weekend</b> — neste fim de semana; <b>next week</b> — na próxima semana</li>
<li><b>on Friday</b> — na sexta-feira; <b>on Saturday</b> — no sábado</li>
<li><b>later</b> — mais tarde; <b>another time</b> — outra ocasião</li>
</ul>

<h3>7. Diálogo comentado</h3>
<p><b>Alex:</b> “Are you free this weekend?” — Você está livre neste fim de semana?</p>
<p><b>Sam:</b> “Yes, I am. Why?” — Sim. Por quê?</p>
<p><b>Alex:</b> “Would you like to watch a movie?” — Você gostaria de assistir a um filme?</p>
<p><b>Sam:</b> “That sounds great! What time?” — Parece ótimo! A que horas?</p>
<p>“Why?” significa “por quê?”. “What time?” pergunta o horário. O diálogo pode continuar com “Let’s meet at six.” — Vamos nos encontrar às seis.</p>

<h3>8. Erros comuns</h3>
<ul>
<li>Incorreto: “I going to study.” Correto: “I’m going to study.”</li>
<li>Incorreto: “Let’s watches a movie.” Correto: “Let’s watch a movie.”</li>
<li>Incorreto: “I don’t can today.” Correto: “I can’t today.”</li>
</ul>

<h3>9. Resumo antes dos exercícios</h3>
<p>Use “Would you like to…?” para convidar, “Let’s…” para sugerir uma atividade e “going to” para planos futuros. Para aceitar, diga “I’d love to!”; para recusar educadamente, diga “Sorry, I can’t today” ou “Maybe another time”.</p>
$lesson$
where title = 'Aula 7 — Planos e convites';

notify pgrst, 'reload schema';
commit;