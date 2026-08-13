# Artigos do blog — Parte 1 (IA, Desenvolvimento, Aplicativos, Jogos)
$part1 = @(

  # ================= INTELEGENCIA ARTIFICIAL =================

  @{
    slug = "ia-generativa-pmes"
    title = "IA generativa para pequenas empresas: o que dá para usar hoje"
    description = "Conheça usos práticos de IA generativa em pequenas e médias empresas — textos, orçamentos, atendimento e mais, sem precisar ser técnico."
    excerpt = "Textos, orçamentos, atendimento e até precificação. Veja onde a IA generativa já dá resultado em PMEs."
    category = "Inteligência Artificial"
    minutes = "7 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer ajuda para usar IA no seu negócio?"
    ctaText = "A AddInfo Brasil cria soluções de IA sob medida e mostra onde a automação compensa."
    sections = @(
      @{ h2 = "O que é IA generativa"; lead = "IA generativa é a tecnologia por trás das ferramentas que criam textos, imagens, planilhas e respostas a partir de comandos simples. Para a empresa, ela funciona como um assistente incansável: entende o que você pede e entrega uma primeira versão pronta para revisar." }
      @{ h2 = "Onde ela já dá resultado no dia a dia de uma PME"; paragraphs = @(
          'Escrita de propostas e e-mails: você informa o contexto e a IA monta o texto profissional.',
          'Respostas de atendimento: respostas rápidas e educadas para perguntas frequentes.',
          'Resumos e relatórios: transformar reuniões e planilhas em resumos claros.',
          'Descrições e conteúdo: textos de produtos, postagens e anúncios em minutos.')
        list = @()
      }
      @{ h2 = "Por onde começar (sem gastar muito)"; paragraphs = @(
          'Comece por uma tarefa específica e repetitiva — não pela ferramenta. Escreva o resultado que você quer e teste a IA nele. Depois de alguns dias, você percebe onde a ferramenta economiza tempo de verdade e onde precisa de ajuste.')
        quote = 'A IA não substitui o seu conhecimento. Ela acelera a parte braçal para você dedicar tempo ao que decide o negócio.' }
    )
  },

  @{
    slug = "ia-atendimento"
    title = "IA no atendimento: chatbots que respondem de verdade"
    description = "Chatbots com inteligência artificial conseguem atender 24h, tirar dúvidas e qualificar leads. Veja como montar sem frustrar o cliente."
    excerpt = "Atender 24h sem deixar o cliente na mão é possível. Entenda como montar um chatbot que resolve de verdade."
    category = "Inteligência Artificial"
    minutes = "6 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer um atendimento automatizado que funciona?"
    ctaText = "Converse com a AddInfo Brasil sobre chatbot com IA para o seu negócio."
    sections = @(
      @{ h2 = "O problema do chatbot antigo"; paragraphs = @(
          'Muitas empresas já testaram chatbot e abandonaram porque era um robô engessado: reconhecia poucas palavras e transferia para o humano em quase tudo. A IA genérica mudou isso — hoje o chatbot entende o que o cliente escreveu e responde com contexto.')
        }
      @{ h2 = "O que um bom chatbot com IA faz"; list = @(
          'Responde perguntas frequentes instantaneamente, com a linguagem da sua marca.',
          'Qualifica o lead: descobre o que a pessoa precisa antes de entregar para o vendedor.',
          'Coleta dados com consentimento: nome, telefone, interesse.',
          'Entrega orçamentos simples e agendamentos direto na conversa.') }
      @{ h2 = "A regra de ouro"; paragraphs = @(
          'Sempre tenha uma saída para atendimento humano. O cliente precisa sentir que, se o problema for complexo, tem gente do outro lado. Automatizar o primeiro atendimento e escalar o resto é o melhor dos dois mundos.')
        quote = 'Chatbot bom não é o que nunca transfere. É o que resolve o simples para o humano resolver o difícil.' }
    )
  },

  @{
    slug = "ia-precificacao"
    title = "Usar IA para precificar serviço sem medo de errar"
    description = "A precificação de serviços é uma das maiores dificuldades das PMEs. Veja como a IA ajuda a calcular custos e margens com mais segurança."
    excerpt = "Preço é decisão de negócio, mas base é cálculo. Veja como a IA ajuda na base sem tirar o seu controle."
    category = "Inteligência Artificial"
    minutes = "6 min de leitura"
    date = "2026-08-12"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Precificação automatizada com IA"
    ctaText = "Conheça o Orçamento Automatizado com IA, produto próprio da AddInfo Brasil."
    ctaUrl = "https://orcamentoproia.netlify.app/"
    ctaLabel = "Testar o Orçamento com IA"
    sections = @(
      @{ h2 = "Por que é difícil precificar"; paragraphs = @(
          'Precificar exige juntar custos diretos, indiretos, impostos, margem e valor percebido. Na correria, muita empresa chuta a margem e descobre o prejuízo só depois. A inteligência artificial não decide o quanto você quer ganhar — mas elimina o erro de cálculo que esconde o preço certo.')
        }
      @{ h2 = "Como a IA entra no processo"; list = @(
          'Monta a estrutura do orçamento a partir da sua tabela de custos.',
          'Calcula impostos, prazos e condições sem erro de digitação.',
          'Padroniza os documentos, evitando proposta fora do padrão.',
          'Libera o vendedor para negociar com base em margem conhecida.') }
      @{ h2 = "O papel humano continua"; paragraphs = @(
          'A IA organiza os números; a estratégia continua com você. Com a baseção automática, você decide o desconto sabendo exatamente o que ele custa — em vez de negociar às cegas.')
        quote = 'Preço certo não é menor nem maior: é o que cobre os custos e comunica o valor. A IA garante a primeira parte.' }
    )
  },

  @{
    slug = "ia-tarefas-repetitivas"
    title = "5 tarefas repetitivas que você pode automatizar com IA"
    description = "Lista prática de tarefas do dia a dia empresarial que dá para automatizar com IA hoje: e-mails, planilhas, relatórios, atas e cotação."
    excerpt = "Cinco tarefas chatas e repetitivas que a IA resolve enquanto você trabalha no que importa."
    category = "Inteligência Artificial"
    minutes = "5 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer mapear as automações do seu negócio?"
    ctaText = "A AddInfo Brasil identifica onde a automação dá retorno rápido para o seu caso."
    sections = @(
      @{ h2 = "As cinco tarefas campeãs"; list = @(
          'E-mails padronizados: avisos, cobranças e respostas a partir de um modelo com dados do cliente.',
          'Planilhas e relatórios: consolidar dados espalhados em resumos limpos.',
          'Atas de reunião: transcrever e resumir o que foi decidido e quem faz o quê.',
          'Respostas de redes sociais: primeiras respostas e agrupamento de dúvidas.',
          'Cotações e orçamentos: montar a base do documento automaticamente, como no <a href="https://orcamentoproia.netlify.app/" target="_blank" rel="noopener">Orçamento Automatizado com IA</a>.') }
      @{ h2 = "Como escolher a primeira automação"; paragraphs = @(
          'Liste tudo que você e a sua equipe repetem toda semana. Escolha a tarefa mais frequente e com regra clara — ela é a candidata perfeita para automação. Comece pequeno: uma automação funcionando vale mais que dez projetos pela metade.')
        quote = 'Automatizar não é demitir gente trabalhando: é tirar a máquina da mão de quem deveria estar pensando.' }
    )
  },

  @{
    slug = "ia-time-comercial"
    title = "Ferramentas de IA para acelerar o time comercial"
    description = "O comercial vive de velocidade e constância. Veja ferramentas e rotinas de IA que aceleram prospecção, propostas e follow-up."
    excerpt = "Prospecção, proposta e follow-up: as três fases da venda que a IA acelera sem esfriar o relacionamento."
    category = "Inteligência Artificial"
    minutes = "7 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Montamos o seu funil com automação"
    ctaText = "Converse com a AddInfo Brasil e descubra onde o vendedor ganha tempo."
    sections = @(
      @{ h2 = "Prospecção"; paragraphs = @(
          'A IA ajuda a pesquisar o lead antes da conversa: tamanho da empresa, segmento, meios de contato e uma primeira mensagem personalizada. Isso reduz o tempo de preparação e aumenta a chance de a primeira mensagem gerar resposta.')
        }
      @{ h2 = "Proposta"; paragraphs = @(
          'A fase que mais demora é a que mais se beneficia da automação. Com regras claras de itens e valores, a IA monta a proposta em minutos e o vendedor revisa antes de enviar. Menos tempo em documento, mais tempo em negociação.')
        }
      @{ h2 = "Follow-up"; paragraphs = @(
          'O que fecha negócio é constância. A IA agenda lembretes, prepara o texto de follow-up e registra o histórico — garantindo que nenhum lead fique esquecido porque o vendedor estava ocupado.')
        quote = 'Venda é um jogo de constância. A IA garante que a constância nunca falhe por falta de tempo.' }
    )
  },

  @{
    slug = "ia-limites"
    title = "Os limites da IA: onde a automação ainda não substitui"
    description = "IA é ferramenta, não oráculo. Aprenda onde a automação falha e como separar o que ela faz bem do que só um humano decide."
    excerpt = "A IA é ótima em alguns pontos e perigosa em outros. Saiba onde não delegar."
    category = "Inteligência Artificial"
    minutes = "6 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Planejamos IA com responsabilidade"
    ctaText = "Fale com a AddInfo Brasil e separe o que automatizar do que manter humano."
    sections = @(
      @{ h2 = "Onde a IA erra"; paragraphs = @(
          'A IA não entende o contexto do seu negócio por conta própria, cria conteúdo que parece certo mas pode estar errado, e não assume responsabilidade por decisão nenhuma. Se você usa o resultado sem revisar, o erro vira seu. Isso não é motivo para evitar — é motivo para usar com critério.')
        }
      @{ h2 = "O que nunca delegar cegamente"; list = @(
          'Decisões de contrato e valores finais.',
          'Promessas ao cliente e prazos firmes.',
          'Conteúdo jurídico ou regulatório sem revisão.',
          'Informações sensíveis antes de confirmar a origem.') }
      @{ h2 = "Como usar sem medo"; paragraphs = @(
          'Trate a IA como um estagiário genial: rápido, criativo, mas que precisa de revisão. Tenha um processo: a IA produz, um humano valida, e só então vai para o cliente. Esse ciclo simples evita quase todos os riscos práticos.')
        quote = 'O valor da IA não está na resposta pronta. Está na hora que você economiza revisando em vez de criando do zero.' }
    )
  },

  @{
    slug = "ia-comecar-7-dias"
    title = "Comece com IA em 7 dias (mesmo sem equipe técnica)"
    description = "Plano simples de 7 dias para adotar IA na empresa cobrindo textos, imagens, planilhas e atendimento — sem contratar ninguém."
    excerpt = "Um plano de sete dias para tirar IA da conversa e colocar na rotina da empresa."
    category = "Inteligência Artificial"
    minutes = "6 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer acelerar a adoção de IA?"
    ctaText = "A AddInfo Brasil conduz a implantação de IA no seu negócio, do começo ao processo."
    sections = @(
      @{ h2 = "Dia 1 a 2: escolha a tarefa"; paragraphs = @(
          'Não instale ferramenta por instalar. Escolha uma rotina repetitiva (e-mails, relatórios, atendimento) e defina o resultado esperado. Uma tarefa clara é o combustível da adoção.')
        }
      @{ h2 = "Dia 3 a 5: teste de verdade"; paragraphs = @(
          'Use a IA na tarefa escolhida por pelo menos três dias. Alimente com os exemplos reais do seu negócio e veja onde ela economiza tempo. Ajuste as instruções conforme a resposta.')
        }
      @{ h2 = "Dia 6 a 7: crie o processo"; paragraphs = @(
          'Documente como a equipe deve usar: o que se pede, o que se revisa, onde o resultado fica salvo. Sem processo, o uso vira experimento esquecido. Com ele, vira rotina que economiza horas toda semana.')
        quote = 'Adoção de IA não é sobre a ferramenta. É sobre a rotina em volta dela.' }
    )
  },

  @{
    slug = "ia-produtividade"
    title = "IA e produtividade: como medir se está compensando"
    description = "Antes e depois de adotar IA, saiba o que medir: tempo economizado, custo por tarefa e qualidade do resultado."
    excerpt = "Metas sem métrica não passam de esperança. Veja como medir o retorno da IA na rotina."
    category = "Inteligência Artificial"
    minutes = "5 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Montamos seu projeto de IA com métricas"
    ctaText = "A AddInfo Brasil define indicadores claros antes de automatizar qualquer processo."
    sections = @(
      @{ h2 = "O que medir"; paragraphs = @(
          'O ganho mais simples de medir é o tempo: quanto uma tarefa levava antes e quanto leva com IA. Se uma hora vira vinte minutos, repita esse número para cada tarefa automatizada e some.')
        }
      @{ h2 = "Além do tempo"; list = @(
          'Custo por tarefa: reduzir horas pagas a um valor menor.',
          'Volume: quantas tarefas a mais cabem no dia com a mesma equipe.',
          'Qualidade: taxa de erros ou de retrabalho antes e depois.',
          'Frequência de uso: se a equipe usa todo dia, é sinal de que resolveu.') }
      @{ h2 = "Quanto tempo esperar"; paragraphs = @(
          'Nas primeiras semanas o ganho parece pequeno, porque há curva de aprendizado. Depois de um mês de uso consistente, compare o antes e o depois. Se não mudou, ajuste o processo ou mude de tarefa — experimentar é parte do plano.')
        quote = 'O retorno da IA não se calcula na primeira semana. Mede-se pelo mês inteiro de constância.' }
    )
  },

  # ================= DESENVOLVIMENTO =================

  @{
    slug = "dev-passo-a-passo"
    title = "Site profissional em 6 passos"
    description = "Do objetivo ao lançamento: os seis passos para criar um site profissional que vende e pode ser encontrado no Google."
    excerpt = "Objetivo, estrutura, conteúdo, design, desempenho e lançamento: o roteiro de um site que funciona."
    category = "Desenvolvimento"
    minutes = "7 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Vamos tirar o seu site do papel?"
    ctaText = "A AddInfo Brasil cria sites rápidos, responsivos e feitos para converter."
    ctaUrl = "https://wa.me/5521991530552?text=Ol%C3%A1!%20Quero%20um%20or%C3%A7amento%20de%20desenvolvimento."
    ctaLabel = "Pedir orçamento"
    sections = @(
      @{ h2 = "1. Defina o objetivo"; paragraphs = @(
          'Um site de venda tem objetivo diferente de um site institucional. Antes de qualquer página, responda: o que o visitante deve fazer? Ligar, comprar, mandar mensagem? Todo o resto deriva dessa resposta.')
        }
      @{ h2 = "2 a 5. Estrutura, conteúdo, design e desempenho"; list = @(
          'Estrutura: navegação simples, com o caminho para a ação em no máximo três cliques.',
          'Conteúdo: texto direto, focando no benefício para o cliente, e não em jargão técnico.',
          'Design: identidade visual consistente e layout que funciona no celular.',
          'Desempenho: páginas leves, que carregam rápido mesmo na internet móvel.') }
      @{ h2 = "6. Lançamento e manutenção"; paragraphs = @(
          'Depois de publicado, o site precisa de acompanhamento: métricas, conteúdo atualizado e pequenos ajustes. Site pronto não é site parado — é ponto de partida.')
        quote = 'O site ideal não é o mais bonito nem o mais tecnológico. É o que leva o visitante à ação com o menor esforço.' }
    )
  },

  @{
    slug = "dev-responsivo"
    title = "Por que o seu site precisa funcionar no celular (primeiro)"
    description = "A maioria dos clientes acessa pelo celular. Entenda design responsivo: por que começar mobile e o que muda na prática."
    excerpt = "O celular virou a principal porta de entrada. Veja o que é design responsivo e por que importa."
    category = "Desenvolvimento"
    minutes = "5 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Seu site funciona bem no celular?"
    ctaText = "A AddInfo Brasil deixa seu site 100% responsivo e rápido."
    sections = @(
      @{ h2 = "A realidade do acesso"; paragraphs = @(
          'No Brasil, a maior parte do acesso à internet vem do celular. Um site que abre e desliza bem no desktop, mas trava no celular, está simplesmente perdendo o principal público.')
        }
      @{ h2 = "O que o design responsivo resolve"; list = @(
          'Ajusta textos, botões e imagens para qualquer tamanho de tela.',
          'Garante botões grandes o suficiente para o dedo.',
          'Evita textos cortados e imagens estouradas.',
          'Melhora a nota de experiência para o Google (e para a venda).') }
      @{ h2 = "Teste antes de publicar"; paragraphs = @(
          'Antes de lançar ou reformular, abra o site no seu celular e faça o caminho do cliente: entre, encontre o serviço, chame no WhatsApp. Se qualquer passo for difícil no celular, ainda falta trabalho.')
        quote = 'Não é o visitante que se adapta ao site. É o site que se adapta à tela do visitante.' }
    )
  },

  @{
    slug = "dev-velocidade"
    title = "Site lento espanta cliente: como acelerar"
    description = "Cada segundo de carregamento conta. Veja as causas comuns de lentidão e as correções práticas para o site carregar rápido."
    excerpt = "Lentidão é o inimigo silencioso da conversão. Conheça as causas e as correções práticas."
    category = "Desenvolvimento"
    minutes = "6 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Seu site está lento?"
    ctaText = "Auditamos desempenho e deixamos o site carregando em segundos."
    sections = @(
      @{ h2 = "Por que velocidade importa"; paragraphs = @(
          'A cada segundo extra de carregamento, parte dos visitantes desiste. Em celular, essa percepção é ainda pior: quem acessa com internet móvel quer resposta imediata.')
        }
      @{ h2 = "Causas comuns de lentidão"; list = @(
          'Imagens pesadas sem otimização (o caso clássico).',
          'Muitos plugins e scripts em cada página.',
          'Fontes e serviços externos que atrasam tudo.',
          'Pouco carinho com a hospedagem e com o cache.') }
      @{ h2 = "Correções que mais ajudam"; paragraphs = @(
          'Comprimir e redimensionar imagens, remover o que não é usado, carregar o essencial primeiro e aproveitar cache. Boa parte dos sites melhora muito só com essas medidas — sem trocar de tecnologia.')
        quote = 'Rápido não é luxo, é requisito. O site que carrega em dois segundos conversa melhor que o que carrega em dez.' }
    )
  },

  @{
    slug = "dev-uiux"
    title = "UI/UX: a diferença entre site bonito e site que vende"
    description = "UI é a aparência, UX é a experiência. Entenda como os dois juntos transformam visitantes em clientes."
    excerpt = "Bonito faz elogio na reunião. Bom de usar faz o cliente comprar. Entenda UI e UX."
    category = "Desenvolvimento"
    minutes = "6 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer um site bonito e funcional?"
    ctaText = "A AddInfo Brasil cuida de UI e UX para o site vender de verdade."
    sections = @(
      @{ h2 = "O que é cada um"; paragraphs = @(
          'UI (interface) é o visual: cores, tipografia, botões. UX (experiência) é o fluxo: o quão fácil é fazer o que veio fazer. Um site bonito com UX ruim frustra rápido; um feio com UX boa surpreende.')
        }
      @{ h2 = "Sinais de boa experiência"; list = @(
          'O visitante entende em segundos o que a empresa faz.',
          'A ação principal (WhatsApp, compra, contato) está visível.',
          'Navegação previsível, sem becos sem saída.',
          'Formulários curtos e sem pedidos desnecessários.') }
      @{ h2 = "Como decidir prioridade"; paragraphs = @(
          'Antes de gastar com efeitos visuais, resolva o fluxo: teste com alguém que nunca viu o site. Se a pessoa chega à ação sem ajuda, metade do caminho está feito. Depois, a aparência refina a confiança.')
        quote = 'O visitante não nota um bom design. Ele só nota um ruim — no exato momento em que desiste.' }
    )
  },

  @{
    slug = "dev-landing"
    title = "Landing page do zero: o checklist antes de publicar"
    description = "Roteiro do que uma landing page precisa ter para converter: proposta clara, prova, ação e rastreamento."
    excerpt = "Antes de publicar sua landing page, confira este checklist de conversão."
    category = "Desenvolvimento"
    minutes = "5 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Precisa de uma landing que converte?"
    ctaText = "Criamos landing pages rápidas e focadas em conversão na AddInfo Brasil."
    sections = @(
      @{ h2 = "Proposta única e clara"; paragraphs = @(
          'A landing responde a uma pergunta: o que estou entregando e para quem? Uma página tentando vender dez coisas não vende nenhuma. Numa landing, menos é mais.')
        }
      @{ h2 = "Os elementos obrigatórios"; list = @(
          'Título direto ao benefício.',
          'Chamada para ação visível sem rolagem (e em telas de celular).',
          'Prova: depoimentos, casos ou números.',
          'Risco reduzido: como funciona e o que acontece depois do clique.',
          'Rastreamento: qual link, botão e página geraram o pedido.') }
      @{ h2 = "Teste antes e depois de ir ao ar"; paragraphs = @(
          'Publique, meça e ajuste. Se a taxa de conversão está baixa, mude o título e a chamada antes de culpar o tráfego. Uma landing boa é resultado de iteração, não de inspiração.')
        quote = 'Landing page perfeita não existe. Landing melhorada toda semana, sim.' }
    )
  },

  @{
    slug = "dev-seo-basico"
    title = "SEO para o site da sua empresa: o básico que funciona"
    description = "Guia introdutório de SEO on-page: palavras-chave, títulos, descrições, velocidade e conteúdo para ser encontrado no Google."
    excerpt = "Palavra-chave, título, descrição, velocidade e conteúdo. O essencial de SEO para PMEs."
    category = "Desenvolvimento"
    minutes = "7 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer seu site encontrado no Google?"
    ctaText = "A AddInfo Brasil prepara o site para SEO e ferramentas de busca."
    sections = @(
      @{ h2 = "O que o Google procura"; paragraphs = @(
          'O Google quer entregar respostas úteis. Ele combina o que você escreve, como seu site está estruturado e o quanto as pessoas confiam nele. SEO não é truque: é facilitar esse entendimento.')
        }
      @{ h2 = "O básico que funciona"; list = @(
          'Defina as palavras que o cliente digita para te encontrar e trabalhe uma por página.',
          'Título e descrição únicos, contendo a palavra-chave.',
          'Endereços de página claros e descritivos.',
          'Site rápido e que funcione no celular.',
          'Conteúdo que responda perguntas reais — é o que ganha destaque.') }
      @{ h2 = "Por onde começar"; paragraphs = @(
          'Comece pelas páginas que vendem (serviços e produtos), melhore título e descrição de cada uma e atualize o sitemap. Publique conteúdo novo com constância. Os resultados aparecem em semanas, não em horas — mas duram.')
        quote = 'SEO é uma corrida de constância: quem alimenta o site todo mês, ocupa as primeiras páginas.' }
    )
  },

  @{
    slug = "dev-seguranca-site"
    title = "Como manter o site seguro (sem virar paranoico)"
    description = "Cuidados essenciais de segurança para sites pequenos: senhas, atualizações, backups e SSL."
    excerpt = "Segurança de site não é só para grande empresa. Estas medidas básicas já resolvem 90%."
    category = "Desenvolvimento"
    minutes = "5 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer reduzir riscos no seu site?"
    ctaText = "A AddInfo Brasil faz revisão de segurança e manutenção de sites."
    sections = @(
      @{ h2 = "As falhas mais comuns"; paragraphs = @(
          'Site pequeno costuma ser invadido por descuido, não por alvo: senha fraca no painel, ferramenta desatualizada ou backup inexistente. A boa notícia é que os mesmos cuidados básicos eliminam quase todos os riscos.')
        }
      @{ h2 = "O essencial"; list = @(
          'Senha forte e troca periódica no painel de administração.',
          'Atualizações sempre em dia (sistema, plugins e temas).',
          'Certificado SSL ativo — o cadeado no navegador.',
          'Backup automático em local separado da hospedagem.') }
      @{ h2 = "O plano de resposta"; paragraphs = @(
          'Tenha por escrito o que fazer se o site cair ou for invadido: quem avisa, onde está o último backup e quem restaura. Plano simples na gaveta vale mais que pânico na hora do problema.')
        quote = 'Segurança não é um produto que se compra. É um hábito que se mantém.' }
    )
  },

  @{
    slug = "dev-ecommerce"
    title = "Loja virtual: vale a pena? Quando começar"
    description = "Análise objetiva para decidir se a loja virtual faz sentido para o seu negócio e como começar certo."
    excerpt = "Nem todo negócio precisa de loja virtual. Veja quando vale e como começar sem tropeçar."
    category = "Desenvolvimento"
    minutes = "6 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer montar sua loja virtual?"
    ctaText = "A AddInfo Brasil constrói lojas rápidas e integradas ao seu fluxo."
    sections = @(
      @{ h2 = "Quando vale a pena"; paragraphs = @(
          'Loja virtual compensa quando você já tem produto pronto para vender, logística viável e público buscando online. Se falta qualquer um dos três, a loja vira vitrine que não vende.')
        }
      @{ h2 = "Sinais de que vale começar"; list = @(
          'Você já vende pelo WhatsApp e o volume cresce.',
          'Seus clientes perguntam por compra online.',
          'Seu produto entrega com frete simples e previsível.',
          'Você consegue manter catálogo e estoque atualizados.') }
      @{ h2 = "O erro mais comum"; paragraphs = @(
          'Fotografar pouco, colocar poucos produtos e esquecer da página do produto (a mais importante da loja). Antes de abrir, invista em boas fotos e descrições claras — é o que transforma clique em compra.')
        quote = 'Loja virtual é vitrine + logística. A vitrine bonita leva o cliente ao carrinho; a logística honesta traz o cliente de volta.' }
    )
  },

  # ================= APLICATIVOS =================

  @{
    slug = "app-4-perguntas"
    title = "Antes de criar um app, responda estas 4 perguntas"
    description = "Quatro perguntas para validar se o aplicativo é a solução certa para o seu negócio antes de investir."
    excerpt = "Um app bom nasce de respostas claras. Valide a ideia antes de investir."
    category = "Aplicativos"
    minutes = "5 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer validar a ideia do seu app?"
    ctaText = "A AddInfo Brasil analisa a necessidade real antes de escrever a primeira linha."
    sections = @(
      @{ h2 = "As quatro perguntas"; list = @(
          'O cliente vai abrir o app todos os dias? Se não, um site resolve.',
          'Que função do celular o app usa (GPS, câmera, notificação)?',
          'Quanto o app agrega de valor que o WhatsApp não entrega?',
          'Qual receita ou retorno o app vai gerar?') }
      @{ h2 = "O que as respostas revelam"; paragraphs = @(
          'Se a maioria das respostas não tem justificativa forte, provavelmente a solução mais leve resolve. Se o app justifica, vá em frente — mas sabendo qual comportamento você está criando no cliente.')
        quote = 'Um app é um compromisso: a empresa atualiza, o cliente confia. Só faça se ambos conseguirem se manter.' }
    )
  },

  @{
    slug = "app-lancamento"
    title = "Do app à loja: o caminho até o lançamento"
    description = "As etapas de desenvolvimento de app até a publicação nas lojas: planejamento, desenvolvimento, teste e o que fazer antes do dia D."
    excerpt = "Da ideia ao download: as etapas reais de lançar um app Android e iOS."
    category = "Aplicativos"
    minutes = "7 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer lançar um aplicativo?"
    ctaText = "Do conceito à loja, a AddInfo Brasil desenvolve apps Android e iOS."
    ctaUrl = "https://wa.me/5521991530552?text=Ol%C3%A1!%20Quero%20um%20or%C3%A7amento%20de%20aplicativo."
    ctaLabel = "Pedir orçamento"
    sections = @(
      @{ h2 = "Planejamento"; paragraphs = @(
          'Defina a tela principal e o fluxo do usuário antes de qualquer código: o que ele faz ao abrir, como chega à ação e o que acontece se falhar. Esse desenho simples economiza semanas de retrabalho.')
        }
      @{ h2 = "Desenvolvimento e teste"; paragraphs = @(
          'Desenvolver é a parte longa, e o teste é a parte que separa um app de qualidade de um que é desinstalado. Teste em aparelhos reais, em rede ruim e com usuários que não conhecem o produto.')
        }
      @{ h2 = "O que fazer antes do dia D"; list = @(
          'Contas de desenvolvedor nas lojas (Google Play e Apple).',
          'Nome, ícone, capturas de tela e descrição otimizada.',
          'Política de privacidade publicada.',
          'Plano de divulgação para o lançamento.') }
    )
  },

  @{
    slug = "app-pwa"
    title = "PWA: o site que vira aplicativo no celular"
    description = "O que é uma PWA, como ela instala no celular sem loja e quando escolher PWA em vez de app nativo."
    excerpt = "Site que instala na tela inicial, funciona offline e notifica. Conheça a PWA."
    category = "Aplicativos"
    minutes = "6 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer um app leve e sem loja?"
    ctaText = "A AddInfo Brasil transforma seu site em PWA instalável."
    sections = @(
      @{ h2 = "O que é uma PWA"; paragraphs = @(
          'PWA (Progressive Web App) é um site que se comporta como aplicativo: instala na tela inicial, abre em tela cheia, funciona parcialmente offline e até envia notificações. Tudo sem passar por uma loja de aplicativos.')
        }
      @{ h2 = "Vantagens na prática"; list = @(
          'Sem taxas de loja e sem processo de aprovação.',
          'Instala com um toque e ganha espaço na tela do cliente.',
          'Sempre atualizado: o cliente vê a versão mais nova.',
          'Custo menor que um app nativo.') }
      @{ h2 = "Quando preferir o nativo"; paragraphs = @(
          'Se você precisa de funções profundas do aparelho ou de loja como canal de descoberta, o app nativo ganha. Para a maioria dos negócios — frequência média, foco em entrega rápida — a PWA entrega quase tudo com fração do custo.')
        quote = 'PWA é o meio-termo inteligente: cara de app, alma de site, custo de página.' }
    )
  },

  # ================= JOGOS =================

  @{
    slug = "jogo-baixo-custo"
    title = "Como criar um jogo de baixo custo para a sua marca"
    description = "Passo a passo para criar um jogo de marca simples e barato: quiz, mecânica única e prêmio — sem estúdio."
    excerpt = "Quiz, mecânica simples e prêmio: um jogo de marca não precisa de estúdio nem de orçamento grande."
    category = "Jogos"
    minutes = "6 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer um jogo de marca?"
    ctaText = "A AddInfo Brasil desenvolve jogos sob medida, do quiz ao 3D."
    sections = @(
      @{ h2 = "O formato campeão"; paragraphs = @(
          'O jogo de marca mais eficiente é o simples: um quiz ou minigame de uma mecânica só, em que o prêmio é desconto ou brinde. Quanto menos instrução, mais gente joga — e mais gente compartilha.')
        }
      @{ h2 = "Como construir"; list = @(
          'Escolha a fase da jornada: captar lead, educar ou fidelizar.',
          'Defina uma mecânica única: pergunte, gire a roleta ou colecione.',
          'Ligue ao seu produto: as perguntas ensinam o que você vende.',
          'Oferta um prêmio claro e condicione a captação de contato.',
          'Meça: quantos jogaram, quantos compartilharam, quantos viraram contato.') }
      @{ h2 = "O segredo"; paragraphs = @(
          'O sucesso está no prêmio e no compartilhamento, não na arte. Um quiz feio com prêmio bom engaja mais que um jogo bonito sem retorno para o jogador.')
        quote = 'Quem joga não lembra da arte. Lembra da emoção e da recompensa.' }
    )
  },

  @{
    slug = "gamificacao"
    title = "Gamificação no negócio: pontos, ranking e recompensas"
    description = "Como aplicar gamificação em vendas, treinamento e clientes — com foco em mudar comportamento, não só em brincar."
    excerpt = "Pontos, ranking e recompensas funcionam quando gamificação vira comportamento, não brincadeira."
    category = "Jogos"
    minutes = "6 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer gamificar seu processo?"
    ctaText = "A AddInfo Brasil projeta gamificação para equipe e clientes."
    sections = @(
      @{ h2 = "O que é gamificação"; paragraphs = @(
          'Gamificação é usar elementos de jogo em contexto real: metas, pontos, níveis, rankings e recompensas. O objetivo não é divertir e pronto — é empurrar o comportamento desejado para frente.')
        }
      @{ h2 = "Onde aplica"; list = @(
          'Treinamento da equipe: quem completa as etapas sobe de nível.',
          'Cultura de metas: metas diárias com progresso visível.',
          'Fidelidade do cliente: pontos que viram desconto.',
          'Adoção de sistema: desafios para a equipe aprender a usar.') }
      @{ h2 = "Cuidado com o excesso"; paragraphs = @(
          'Gamificação demais cansa, e ranking injusto desmotiva. Use pontos para reforçar o comportamento certo, não para substituir o incentivo real. O jogo organiza; o reconhecimento é o que mantém.')
        quote = 'A mecânica engaja na primeira semana. O que sustenta é a recompensa justa e o reconhecimento.' }
    )
  },

  @{
    slug = "jogos-treinamento"
    title = "Jogos para treinamento: aprender brincando funciona"
    description = "Treinamento corporativo com jogos: por que a retenção aumenta e como criar trilhas de aprendizado gamificadas."
    excerpt = "Quem brinca aprende e lembra. Veja como jogos e simulação aceleram o treinamento."
    category = "Jogos"
    minutes = "5 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer treinar sua equipe com jogos?"
    ctaText = "A AddInfo Brasil cria simulações e trilhas gamificadas sob medida."
    sections = @(
      @{ h2 = "Por que jogos ensinam mais"; paragraphs = @(
          'Ver de novo, fazer uma vez. A simulação coloca o funcionário em situação real, com erro seguro e resposta imediata. A retenção sobe porque a pessoa viveu a situação, não só leu sobre ela.')
        }
      @{ h2 = "Exemplos que funcionam"; list = @(
          'Simulação de atendimento difícil para o time comercial.',
          'Quiz de processos e política para integração de novos.',
          'Jogo de precificação e negociação para vendedores.',
          'Trilhas semanais curtas para manter o time afiado.') }
      @{ h2 = "Regra para construir"; paragraphs = @(
          'Monte o jogo a partir do erro real que a sua equipe comete. Cada pergunta ou etapa deve preparar para a situação do dia a dia. Treinamento gamificado não é entretenimento — é prática com recompensa.')
        quote = 'O melhor treinamento não é o que entretém. É o que impede o erro antes de ele custar caro.' }
    )
  }
)