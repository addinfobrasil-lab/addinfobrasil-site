# Artigos do blog — Parte 2 (Infraestrutura, CFTV, Manutenção, Negócios)
$part2 = @(

  # ================= INFRAESTRUTURA E REDES =================

  @{
    slug = "infra-roteador"
    title = "Roteador travando? O que fazer antes de trocar"
    description = "Pequenos testes e configurações para tentar antes de trocar o roteador: posição, canal, firmware e se o problema é mesmo o aparelho."
    excerpt = "Antes de trocar o roteador, confira posição, canal, firmware e o que mais pode estar travando."
    category = "Infraestrutura"
    minutes = "6 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Sua rede precisa de diagnóstico?"
    ctaText = "A AddInfo Brasil avalia roteadores, rede e conectividade da empresa."
    sections = @(
      @{ h2 = "Os vilões mais comuns"; paragraphs = @(
          'Roteador costuma travar por três motivos: posição ruim (perto de paredes e aparelhos que interferem), canal lotado (vizinhos usando o mesmo) e firmware desatualizado. Nenhum deles é conserto de técnico obrigatório.')
        }
      @{ h2 = "O que tentar antes de trocar"; list = @(
          'Reiniciar e posicionar no centro do espaço, longe do chão.',
          'Trocar o canal do Wi-Fi por um menos congestionado.',
          'Atualizar o firmware pelo painel do aparelho.',
          'Verificar se o cabo de internet está em boas condições.',
          'Testar direto no cabo: se funciona, o problema é o Wi-Fi.') }
      @{ h2 = "Quando a troca é inevitável"; paragraphs = @(
          'Se o aparelho aquece demais, reinicia sozinho ou não atende o número de aparelhos conectados, a troca é justificada. Para escritório em crescimento, muitas vezes o extra de qualidade é um equipamento profissional, não outro roteador doméstico.')
        quote = 'Antes de culpar o equipamento, cumpra a lista dos culpados clássicos. A maioria dos travamentos morre nela.' }
    )
  },

  @{
    slug = "infra-cabeamento"
    title = "Cabeamento estruturado: o esqueleto da sua rede"
    description = "O que é cabeamento estruturado, por que ele define a velocidade e estabilidade da rede e quando reestruturar o da empresa."
    excerpt = "A velocidade da sua rede depende mais do cabo do que do Wi-Fi. Entenda o cabeamento estruturado."
    category = "Infraestrutura"
    minutes = "6 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer reestruturar a rede da empresa?"
    ctaText = "A AddInfo Brasil projeta e instala cabeamento estruturado."
    sections = @(
      @{ h2 = "Por que o cabo importa"; paragraphs = @(
          'O Wi-Fi é conveniente, mas a base sólida de uma rede é o cabeamento. Ponto de rede bem feito entrega velocidade estável, enquanto um cabo emendado ou mal conectado vira limite invisível de velocidade.')
        }
      @{ h2 = "Cuidados profissionais"; list = @(
          'Cabos e conectores de qualidade, conectados em tomada correta.',
          'Separar rede de dados da rede de energia (interferência).',
          'Organizar o rack com identificação por ponto.',
          'Organização e folgas adequadas para manutenção futura.',
          'Estruturas de fibra onde há distância ou demanda.') }
      @{ h2 = "Sinais de que precisa reestruturar"; paragraphs = @(
          'Se o escritório cresceu e os pontos originais não bastam, se há emendas improvisadas ou se a velocidade contratada não chega a lugar nenhum, chegou a hora de um projeto de cabeamento. O custo é pequeno perto da dor de cabeça constante de rede.')
        quote = 'Todo mundo culpa a internet da empresa. Metade das vezes, o culpado está pregado na parede: o cabo.' }
    )
  },

  @{
    slug = "infra-internet"
    title = "Como escolher a internet certa para a empresa"
    description = "Critérios para escolher a internet da empresa: velocidade de download e upload, fibra, contrato e equipamento."
    excerpt = "Velocidade contratada não é velocidade entregue. Saiba como escolher a internet da empresa."
    category = "Infraestrutura"
    minutes = "6 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Internet da empresa precisando de melhora?"
    ctaText = "A AddInfo Brasil indica o plano e os equipamentos certos para o seu uso."
    sections = @(
      @{ h2 = "O erro do download gigante"; paragraphs = @(
          'Empresas escolhem internet olhando só o download. Para quem faz vídeo, nuvem e backup, o upload é decisivo — e a fibra óptica entrega os dois com simetria.' )
        }
      @{ h2 = "Como calcular"; list = @(
          'Conte quantos aparelhos usam ao mesmo tempo e multiplique por um valor médio de uso.',
          'Separe o uso crítico (nuvem, chamadas, sistema) do convencional (redes sociais).',
          'Priorize fibra e planos com SLA (garantia de disponibilidade).',
          'Exija velocidade simétrica quando o upload importa.',
          'Desconfie de preço muito baixo: a entrega costuma acompanhar.') }
      @{ h2 = "Estrutura de suporte"; paragraphs = @(
          'Internet boa também depende do que vem depois da porta: roteador, switch e pontos de rede. Contratar um plano gigante usando Wi-Fi de equipamento fraco é desperdício. Cuide dos dois lados.')
        quote = 'Internet da empresa não se contrata pelo preço. Calcula-se pela operação que precisa ficar no ar.' }
    )
  },

  @{
    slug = "infra-nuvem"
    title = "Servidor local ou nuvem? O guia de decisão"
    description = "Compare servidor local e nuvem para PMEs: custo, segurança, mobilidade e quando cada um faz sentido."
    excerpt = "Nuvem para uns, servidor local para outros. Aprenda a decidir pelo seu tipo de negócio."
    category = "Infraestrutura"
    minutes = "7 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Dúvida entre local e nuvem?"
    ctaText = "A AddInfo Brasil monta a infraestrutura certa para o seu porte."
    sections = @(
      @{ h2 = "Quando a nuvem ganha"; list = @(
          'Equipe trabalha de lugares diferentes (home office, campo).',
          'Precisa acessar tudo do celular e sem investimento em máquina.',
          'Quer custo previsível por mês, sem comprar hardware.',
          'Quer backup garantido pelo provedor.') }
      @{ h2 = "Quando o servidor local ganha"; list = @(
          'Precisa de alta velocidade interna para arquivos e sistemas pesados.',
          'Dados sensíveis que exigem controle absoluto do ambiente.',
          'Operação contínua mesmo com internet instável.',
          'Já existe investimento em infraestrutura que vale usar.') }
      @{ h2 = "O caminho híbrido"; paragraphs = @(
          'A maioria das PMEs evolui para um misto: arquivos críticos na nuvem, sistemas pesados no local. Em vez de escolher um adversário, defina por tipo de dado e por onde a equipe trabalha. O que não pode faltar é backup em lugar separado, em qualquer cenário.')
        quote = 'A pergunta certa não é nuvem ou servidor. É: onde cada dado precisa estar para o negócio girar?' }
    )
  },

  @{
    slug = "infra-backup"
    title = "Backup: o que a sua empresa não pode perder"
    description = "A regra 3-2-1 de backup explicada para PMEs: cópias, mídias diferentes e uma fora do local. Sem jargão."
    excerpt = "Uma cópia não é backup. Entenda a regra que garante que seus arquivos nunca somem."
    category = "Infraestrutura"
    minutes = "5 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Seus dados estão mesmo protegidos?"
    ctaText = "A AddInfo Brasil monta rotina de backup que funciona de verdade."
    sections = @(
      @{ h2 = "Uma cópia não é backup"; paragraphs = @(
          'Backup de verdade sobrevive a três ameaças: erro humano (apagar sem querer), falha de equipamento e desastre físico (roubo, incêndio). Uma cópia no mesmo computador não passa em nenhuma das três.')
        }
      @{ h2 = "A regra 3-2-1"; paragraphs = @(
          'Guarde ao menos duas cópias em dois meios diferentes (ex: nuvem e HD externo), com uma delas fora do local. Parece exagero até o dia em que o arquivo some — e aí é a diferença entre retomar em horas ou perder tudo.')
        }
      @{ h2 = "O teste que vale ouro"; list = @(
          'Teste a restauração pelo menos uma vez por trimestre.',
          'Automatize o backup — esqueça de copiar na mão.',
          'Proteja o arquivo de ransomware com versões e cópia imutável.',
          'Documente quem restaura o quê quando o problema chegar.') }
    )
  },

  @{
    slug = "infra-antivirus"
    title = "Antivírus e segurança: como proteger os computadores da empresa"
    description = "Camadas de proteção para os computadores da empresa: antivírus, atualizações, email seguro e hábitos da equipe."
    excerpt = "Antivírus é só uma camada. Veja o conjunto de proteção para os computadores da empresa."
    category = "Infraestrutura"
    minutes = "6 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer blindar os computadores da empresa?"
    ctaText = "A AddInfo Brasil configura proteção e política de segurança."
    sections = @(
      @{ h2 = "Antivírus bem configurado"; paragraphs = @(
          'O antivírus continua sendo a primeira defesa, mas precisa de configuração: atualização automática, proteção em tempo real ligada e varredura periódica. Instalar e esquecer protege menos do que se imagina.')
        }
      @{ h2 = "As outras camadas"; list = @(
          'Atualizações do sistema e dos programas sempre em dia.',
          'Filtro de e-mail para reduzir o phishing que chega por mensagem.',
          'Senhas fortes e acesso com dois fatores.',
          'Backup separado para sobreviver a ransomware.',
          'Treinamento simples: desconfiar de link e anexo inesperado.') }
      @{ h2 = "A ameaça quase sempre passa pelo humano"; paragraphs = @(
          'A maioria dos ataques começa num clique, não numa falha técnica. Uma política curta e clara — não clicar em anexo estranho, não usar senha repetida — multiplica a proteção das ferramentas.')
        quote = 'A segurança da empresa é tão forte quanto o hábito mais fraco da equipe. Tecnologia ajuda; disciplina decide.' }
    )
  },

  @{
    slug = "infra-homeoffice"
    title = "Home office: o que a equipe precisa para trabalhar bem"
    description = "Infraestrutura para home office e trabalho híbrido: conexão, equipamento, segurança e ferramentas da equipe."
    excerpt = "Home office produtivo não é só notebook. Veja a lista do que a equipe precisa para render."
    category = "Infraestrutura"
    minutes = "6 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer montar o home office da equipe?"
    ctaText = "A AddInfo Brasil estrutura tecnologia para trabalho híbrido."
    sections = @(
      @{ h2 = "O básico que não pode faltar"; list = @(
          'Internet estável com bom upload para chamadas e VPN.',
          'Notebook com memória e armazenamento suficientes para a rotina.',
          'Fone de ouvido para reuniões (escuta muda o jogo).',
          'VPN configurada para acesso seguro aos sistemas.',
          'Política de backup dos arquivos do colaborador.') }
      @{ h2 = "Segurança fora do escritório"; paragraphs = @(
          'Trabalhar de casa amplia o risco: rede doméstica, computador pessoal, Wi-Fi de café. Padronize o acesso com VPN e dois fatores, e defina claramente o que só pode ser feito no equipamento da empresa.')
        }
      @{ h2 = "Suporte que acompanha"; paragraphs = @(
          'Home office só funciona se houver alguém para resolver problema à distância. Ter suporte acessível — para configurar, resolver conexão ou preparar equipamento — é o que mantém a equipe no ar sem dor de cabeça.')
        quote = 'Produtividade em casa não depende do trabalho. Depende do que vem antes: rede, máquina e acesso no lugar.' }
    )
  },

  @{
    slug = "infra-virtualizacao"
    title = "Virtualização e servidores: quando vale a pena"
    description = "O que é virtualização de servidores, seus benefícios para PMEs e como saber se seu negócio está pronto para isso."
    excerpt = "Virtualização concentra vários servidores numa máquina só. Veja quando compensa para o seu porte."
    category = "Infraestrutura"
    minutes = "6 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Seus servidores podem render mais?"
    ctaText = "A AddInfo Brasil avalia virtualização e consolidação de servidores."
    sections = @(
      @{ h2 = "O que é e por que existe"; paragraphs = @(
          'Em vez de uma máquina física para cada serviço (e-mail, sistema, arquivos), a virtualização roda vários servidores virtuais numa mesma máquina. Você aproveita mais do hardware, gasta menos energia e facilita a recuperação.')
        }
      @{ h2 = "Vantagens práticas"; list = @(
          'Menos equipamento físico, menos custo e espaço.',
          'Restauração rápida: recuperar um servidor virtual é mais simples.',
          'Testes sem risco: subir um ambiente isolado para testar.',
          'Expansão flexível conforme a demanda cresce.') }
      @{ h2 = "Quando ainda não compensa"; paragraphs = @(
          'Para uma empresa com poucos serviços simples, virtualizar pode adicionar complexidade sem ganho. O momento certo é quando há vários servidores subutilizados ou quando a recuperação de desastre passou a ser preocupação real.')
        quote = 'Virtualização não é tendência: é economia de máquina e de dor de cabeça — no tamanho certo do seu negócio.' }
    )
  },

  # ================= CFTV E SEGURANCA =================

  @{
    slug = "cftv-pequenas"
    title = "CFTV para pequenas empresas: quanto custa e o que cobre"
    description = "O investimento real de um CFTV para pequena empresa: câmeras, instalação, gravação e o que ele protege."
    excerpt = "Campo de visão, gravação e prevenção: o que um CFTV cobre e quanto custa para PME."
    category = "CFTV e Segurança"
    minutes = "6 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer um projeto de CFTV completo?"
    ctaText = "A AddInfo Brasil projeta, instala e configura o CFTV do seu espaço."
    ctaUrl = "https://wa.me/5521991530552?text=Ol%C3%A1!%20Quero%20um%20projeto%20de%20CFTV."
    ctaLabel = "Pedir projeto"
    sections = @(
      @{ h2 = "O que o investimento cobre"; paragraphs = @(
          'Um sistema de CFTV para pequena empresa envolve câmeras, cabeamento, equipamento de gravação e instalação. O valor varia conforme o número de pontos e o tipo de câmera, mas o que pesa de verdade é o planejamento: poucas câmeras bem posicionadas protegem mais que muitas mal colocadas.')
        }
      @{ h2 = "O que não é negociável"; list = @(
          'Boa imagem à noite (infravermelho real, não decorativo).',
          'Gravação contínua e segura, com espaço calculado.',
          'Instalação com cabeamento e rede no padrão.',
          'Acesso remoto monitorado com senha segura.') }
      @{ h2 = "Além do custo: o efeito prevenção"; paragraphs = @(
          'O CFTV reduz roubo, vandalismo e conflitos — e, quando algo acontece, entrega registro para resolver. Para a pequena empresa, é prevenção que costuma pagar o próprio investimento.')
        quote = 'Câmera bem instalada não vigia o ladrão: vigia a sua consequência. Quem vê câmera evita o ato.' }
    )
  },

  @{
    slug = "cftv-ip-ou-analogica"
    title = "Câmeras IP ou analógicas: qual escolher"
    description = "Diferenças práticas entre câmeras IP e analógicas para CFTV: resolução, infraestrutura, custo e manutenção."
    excerpt = "IP entrega imagem e recursos; analógica entrega preço. Veja quando cada uma faz sentido."
    category = "CFTV e Segurança"
    minutes = "5 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Qual câmera usar no seu projeto?"
    ctaText = "A AddInfo Brasil escolhe a tecnologia certa de CFTV para o seu caso."
    sections = @(
      @{ h2 = "As diferenças na prática"; paragraphs = @(
          'Câmeras IP usam a rede da empresa: imagem digital, acesso remoto fácil, recursos como detecção de movimento. Câmeras analógicas (HD-TVI) usam cabo coaxial: custo de equipamento menor, imagem boa, mas recursos limitados.')
        }
      @{ h2 = "Como decidir"; list = @(
          'Poucos pontos e orçamento curto: analógica HD-TVI ainda atende bem.',
          'Vários pontos e acesso pelo celular: IP escala melhor na rede.',
          'Precisa de análise de imagem ou integração: IP.',
          'Infraestrutura já existente: aproveite o tipo que já está lá.') }
      @{ h2 = "A dica final"; paragraphs = @(
          'Antes de escolher o tipo, escolha a posição e o objetivo. Determinado o que cada câmera precisa enxergar, o tipo certo quase sempre se decide sozinho.')
        quote = 'Não se escolhe câmera pela moda. Escolhe-se pela rede, pelo ponto e pela imagem que precisa gravar.' }
    )
  },

  @{
    slug = "cftv-armazenamento"
    title = "Onde guardar as imagens: DVR, NVR ou nuvem"
    description = "Opções de armazenamento de câmeras: gravadores locais por tipo de câmera, nuvem e híbrido — o que escolher."
    excerpt = "DVR, NVR ou nuvem: entenda onde ficam as imagens e por quanto tempo dá para guardar."
    category = "CFTV e Segurança"
    minutes = "5 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer armazenar imagens com segurança?"
    ctaText = "A AddInfo Brasil dimensiona o armazenamento do seu CFTV."
    sections = @(
      @{ h2 = "Gravador local"; paragraphs = @(
          'DVR grava câmeras analógicas e NVR grava câmeras IP. Dois pontos importam: a capacidade (quantos dias de vídeo cabem) e a proteção do aparelho (longe de acesso público e com senha).')
        }
      @{ h2 = "Nuvem"; paragraphs = @(
          'A nuvem guarda as imagens fora do local — sobrevive a roubo do gravador — e permite acesso de qualquer lugar. Em troca, cobra por mês e depende de boa internet no upload.')
        }
      @{ h2 = "Como dimensionar"; list = @(
          'Defina quantos dias de retenção são suficientes (30 e 60 são comuns).',
          'Calcule o espaço pela resolução das câmeras e horas de gravação.',
          'Combine: gravador local para acesso rápido + nuvem para proteção.',
          'Teste o acesso remoto antes de depender dele.') }
    )
  },

  @{
    slug = "lgpd-cftv"
    title = "Câmeras na empresa e a LGPD: o que é permitido"
    description = "Regras básicas da LGPD para câmeras em ambiente de trabalho: finalidade, aviso, legitimidade e limites."
    excerpt = "Vigiar é permitido, vigiar sem transparência não. O que a LGPD exige do seu CFTV."
    category = "CFTV e Segurança"
    minutes = "6 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Seu CFTV está em dia com a LGPD?"
    ctaText = "A AddInfo Brasil orienta o projeto de câmeras com a legislação em vista."
    sections = @(
      @{ h2 = "O princípio geral"; paragraphs = @(
          'A LGPD permite a vigilância quando tem finalidade legítima (segurança do patrimônio e de pessoas) e quando é transparente. Monitorar para vigiar funcionário de forma velada é o que derruba a empresa na prática.')
        }
      @{ h2 = "O que fazer na prática"; list = @(
          'Informe com avisos claros nas áreas monitoradas.',
          'Grave apenas o necessário e pelo tempo definido.',
          'Refina o acesso: quem pode ver as imagens?',
          'Retenha por prazo razoável e descarte quando não servir.',
          'Banheiros, vestiários e áreas íntimas são proibidos.') }
      @{ h2 = "Resultado"; paragraphs = @(
          'Um CFTV alinhado à LGPD protege o negócio em duas frentes: reduz o risco jurídico e preserva a confiança da equipe. Transparência não enfraquece a segurança — ela a sustenta.')
        quote = 'Câmera sem aviso não é segurança: é passivo. Com aviso e finalidade, vira proteção legítima.' }
    )
  },

  @{
    slug = "cftv-alarme"
    title = "CFTV + alarme: protegendo por camadas"
    description = "Por que monitoramento e alarme funcionam melhor juntos: detecção, resposta e registro — o efeito camadas."
    excerpt = "Câmera registra, alarme alerta. Juntos formam o conceito de segurança em camadas."
    category = "CFTV e Segurança"
    minutes = "5 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer proteger o negócio por camadas?"
    ctaText = "A AddInfo Brasil integra CFTV, alarme e monitoramento."
    sections = @(
      @{ h2 = "Papéis diferentes"; paragraphs = @(
          'O CFTV é ótimo para registro e prevenção visual; o alarme é a detecção: ele aciona, avisa e ativamente responde (sirene, central, contato). Um sem o outro deixa lacuna.')
        }
      @{ h2 = "O efeito camadas"; list = @(
          'Deter: câmeras e alarme visíveis desencorajam a tentativa.',
          'Detectar: o alarme percebe, a câmera mostra o que aconteceu.',
          'Responder: contato e central verificam e acionam quem precisa.',
          'Registrar: a imagem comprova e resolve o desdobramento.') }
      @{ h2 = "Integração em vez de soma"; paragraphs = @(
          'O valor real está na integração: o alarme disparado marca o vídeo e dispara o aviso para quem decide. Sistema despedaçado (câmera num fornecedor, alarme noutro, sem comunicação) protege menos do que cada peça somada.')
        quote = 'Segurança boa não é a peça mais cara. É a engrenagem que conecta detecção e resposta.' }
    )
  },

  @{
    slug = "seguranca-dados"
    title = "Segurança de dados da empresa: o básico que falta em todo lugar"
    description = "Cuidados essenciais de proteção de dados para PMEs: quem acessa o quê, senhas, backup e LGPD."
    excerpt = "Proteção de dados é processo, não software. Os básicos que quase ninguém faz."
    category = "CFTV e Segurança"
    minutes = "6 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Seus dados estão protegidos?"
    ctaText = "A AddInfo Brasil faz diagnóstico de segurança e dados."
    sections = @(
      @{ h2 = "O que é proteger dado na prática"; paragraphs = @(
          'Proteger dados é controlar quem acessa o quê, manter backup consistente e seguir a LGPD. Muitas empresas têm ferramentas caras e nenhum desses três processos — gastou, mas não protegeu.')
        }
      @{ h2 = "Os básicos"; list = @(
          'Mapeie quais dados sensíveis a empresa guarda e onde.',
          'Dê o acesso mínimo: cada um só ao que precisa.',
          'Senha forte e dois fatores em tudo crítico.',
          'Backup testado e fora do alcance de ransomware.',
          'Registro de tratamento de dados à mão para a LGPD.') }
      @{ h2 = "Começar pequeno"; paragraphs = @(
          'Não é preciso projeto enorme: um mapa de dados numa planilha, permissões revistas e backup funcionando já são mais que 80% das empresas. A partir daí, melhore o que existe por partes.')
        quote = 'Dado sem dono nem backup é risco esperando acontecer. Dado mapeado e protegido é ativo.' }
    )
  },

  # ================= MANUTENCAO E SUPORTE =================

  @{
    slug = "manut-pc-lento"
    title = "Por que o computador fica lento (e o que resolver)"
    description = "As causas mais comuns de computador lento e o que dá para fazer: inicialização, armazenamento cheio e programas pesados."
    excerpt = "Computador lento quase nunca é mistério. Estas são as causas frequentes — e a cura."
    category = "Manutenção e Suporte"
    minutes = "5 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Seu computador está lento?"
    ctaText = "A AddInfo Brasil faz manutenção e otimização de equipamentos."
    ctaUrl = "https://wa.me/5521991530552?text=Ol%C3%A1!%20Quero%20manuten%C3%A7%C3%A3o%20de%20computador."
    ctaLabel = "Pedir manutenção"
    sections = @(
      @{ h2 = "Os suspeitos de sempre"; paragraphs = @(
          'Computador lento tem causas conhecidas: programas abrindo junto no início, disco cheio, memória faltando e softwares pesados rodando sem necessidade. Nada disso é defeito de fábrica.')
        }
      @{ h2 = "O que dá para fazer"; list = @(
          'Desativar o que abre automaticamente e não é preciso.',
          'Liberar espaço em disco (arquivos e lixo acumulado).',
          'Fechar programas que ficam em segundo plano.',
          'Atualizar o sistema e reiniciar com frequência.</li>',
          'Avaliar a troca do disco por um SSD — transforma máquinas antigas.') }
      @{ h2 = "Quando é hora de formatação ou troca"; paragraphs = @(
          'Se a máquina é antiga, o passo que mais resolve é trocar o disco por SSD e aumentar memória. Se ainda assim não der conta do trabalho, aí sim é conversa sobre troca de equipamento.')
        quote = 'Lentidão é sintoma, não sentença. Na maioria das vezes, uma rotina limpa devolve o computador ao trabalho.' }
    )
  },

  @{
    slug = "manut-preventiva"
    title = "Manutenção preventiva: o preço da dor de cabeça evitada"
    description = "Por que manutenção preventiva de computadores e rede custa menos que apagar incêndio, com rotina que evita paradas."
    excerpt = "Revisar antes custa pouco; consertar depois custa caro. Veja a lógica da manutenção preventiva."
    category = "Manutenção e Suporte"
    minutes = "5 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Sua empresa tem manutenção preventiva?"
    ctaText = "A AddInfo Brasil monta plano de manutenção para equipamentos e rede."
    sections = @(
      @{ h2 = "Corretiva pega você trabalhando"; paragraphs = @(
          'Manutenção corretiva é aquela que acontece quando já quebrou: urgência, custo maior e equipe parada. Preventiva é a visita agendada que encontra o problema antes de ele virar parada.')
        }
      @{ h2 = "O que entra na rotina"; list = @(
          'Limpeza e estado de hardware (ventilação, poeira).',
          'Atualização de sistema e atualizações pendentes.',
          'Verificação de disco, backup e segurança.',
          'Revisão de rede, Wi-Fi e equipamentos centrais.') }
      @{ h2 = "Fazendo a conta"; paragraphs = @(
          'Uma hora de vendedor parada por máquina com problema vale centavos? Some a equipe parada, o atraso no cliente e a perda de confiança. A revisão preventiva mensal ou trimestral quase sempre custa menos que um único incidente.')
        quote = 'Quem espera quebrar para agir paga pelo pânico. Quem revisa todo mês vive em paz.' }
    )
  },

  @{
    slug = "manut-tecnico"
    title = "Tentar consertar ou chamar técnico? Quando cada um vale"
    description = "Roteiro para decidir entre resolver você mesmo ou chamar suporte: riscos, tempo e quando o técnico é obrigatório."
    excerpt = "Nem todo problema merece você na frente do computador. Saiba quando chamar o técnico."
    category = "Manutenção e Suporte"
    minutes = "4 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Precisa de suporte técnico?"
    ctaText = "A AddInfo Brasil atende e resolve equipamentos e rede da empresa."
    ctaUrl = "https://wa.me/5521991530552?text=Ol%C3%A1!%20Preciso%20de%20suporte%20t%C3%A9cnico."
    ctaLabel = "Chamar suporte"
    sections = @(
      @{ h2 = "O que dá para tentar antes"; paragraphs = @(
          'Reiniciar, testar cabo e energia, verificar espaço em disco e procurar atualização pendente resolvem boa parte dos problemas cotidianos. O teste básico vale a pena em qualquer cenário.')
        }
      @{ h2 = "Quando o técnico é obrigatório"; list = @(
          'Perda de dados ou suspeita de ataque em curso.',
          'Problema em servidor, rede ou sistema crítico.',
          'Falha nova de hardware com dados dentro da máquina.',
          'Máquina não inicia nem com os testes básicos.') }
      @{ h2 = "O custo de mexer demais"; paragraphs = @(
          'Em sistemas críticos, tentar resolver e piorar custa mais que chamar suporte na primeira hora. Regra simples: se envolve dado ou rede da empresa e não resolveu em poucos minutos, deixe para quem faz isso o dia inteiro.')
        quote = 'Consertar sozinho economiza quando é simples. Ambos os casos terminam com a mesma pergunta: deu tempo?' }
    )
  },

  @{
    slug = "manut-ciclo"
    title = "Ciclo de vida do computador da empresa: quando atualizar"
    description = "Como saber se o computador chegou no fim da vida útil: desempenho, custo de manutenção e quando comprar."
    excerpt = "Trocar no tempo certo é economia. Saber os sinais do fim de vida evita gasto desnecessário."
    category = "Manutenção e Suporte"
    minutes = "5 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "É hora de renovar os equipamentos?"
    ctaText = "A AddInfo Brasil ajuda a planejar a troca de equipamentos da empresa."
    sections = @(
      @{ h2 = "Os sinais de fim de vida"; list = @(
          'O sistema não atualiza mais (garantias de segurança encerradas).',
          'Manutenções frequentes custam mais que aparelho novo no ano.',
          'Programas do trabalho exigem mais que a máquina suporta.',
          'Problemas de bateria e calor limitam o uso.') }
      @{ h2 = "Como planejar a troca"; paragraphs = @(
          'Em vez de substituir tudo no desespero, planeje por prioridade: máquinas de quem mais gera receita primeiro, depois as de suporte. Reserve verba anual e defina um ciclo médio de 4 a 5 anos para desktop/notebook.')
        }
      @{ h2 = "Antes de comprar em massa"; paragraphs = @(
          'Defina o perfil de uso: vendedor, administrativo, técnico usam máquinas diferentes. Padronizar o equipamento por perfil simplifica compra, suporte e evita máquina cara onde não precisa (e barata demais onde precisa).')
        quote = 'Computador não é gasto para adiar até quebrar: é recurso para programar antes que pare.' }
    )
  },

  # ================= NEGOCIOS E TECNOLOGIA =================

  @{
    slug = "neg-transformacao"
    title = "Transformação digital para PME: do papel ao processo"
    description = "Roteiro honesto de transformação digital para pequenas e médias empresas: por onde começar e o que evitar."
    excerpt = "Transformação digital não é comprar sistema. É trocar improviso por processo — um passo por vez."
    category = "Negócios"
    minutes = "7 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer um plano de transformação digital?"
    ctaText = "Baixe o ebook e fale com a AddInfo Brasil para aplicar no seu caso."
    ctaUrl = "https://addinfobrasil.hotmart.host/nova-pagina-680fc465-ba8b-4a16-8144-003088bf4003"
    ctaLabel = "Conhecer o ebook"
    sections = @(
      @{ h2 = "O erro mais comum"; paragraphs = @(
          'A transformação digital vira fracasso quando começa pela ferramenta: comprar o sistema mais sofisticado para um processo que ninguém entendeu. O ponto de partida é outro — enxergar onde o improviso atrapalha hoje.')
        }
      @{ h2 = "Por onde começar"; list = @(
          'Escolha um processo que todo dia acontece (orçamento, estoque, atendimento).',
          'Descreva como ele funciona hoje, no papel.',
          'Defina onde a tecnologia pode padronizar e agilizar.',
          'Implemente para um processo, aprenda, e só depois expanda.') }
      @{ h2 = "O eletrônico no lugar do papel"; paragraphs = @(
          'Digitalizar não é digitalizar arquivo: é digitalizar o fluxo. Do pedido ao pagamento, do cadastro ao atendimento, cada transição de mãos ganha registro e responsável. É aí que nasce a empresa que funciona sem depender de memória.')
        quote = 'Transformação digital é a arte de trocar o improviso pelo processo, sem transformar o processo em burocracia.' }
    )
  },

  @{
    slug = "neg-conversao"
    title = "O que o site precisa para converter visitante em cliente"
    description = "Os elementos que transformam o site em máquina de conversão: proposta clara, canais, confiança e resposta rápida."
    excerpt = "Visitar não é comprar. Estas peças transformam o visitante do seu site em cliente."
    category = "Negócios"
    minutes = "6 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer um site que converte?"
    ctaText = "A AddInfo Brasil otimiza o site para transformar tráfego em contato."
    sections = @(
      @{ h2 = "Proposta visível em segundos"; paragraphs = @(
          'O visitante decide em poucos segundos se vale continuar. Título claro sobre o que você faz e para quem serve, sem jargão, é o que segura a visita. Esconder a proposta é o principal distribuidor de queda.')
        }
      @{ h2 = "O caminho da ação"; list = @(
          'Canal de contato à vista: WhatsApp, telefone ou formulário curto.',
          'Botão de ação repetido ao longo da página.',
          'Prova de confiança: casos, clientes e números.',
          'Resposta rápida: quanto menor o tempo de resposta, maior a conversão.') }
      @{ h2 = "A métrica que decide"; paragraphs = @(
          'Acompanhamento: de cada 100 visitantes, quantos chamam ou pedem? Se o número é baixo, o problema é o site e não o tráfego. Melhore a clareza e a forma de contato antes de investir em mais visitas.')
        quote = 'Tráfego traz visitante; o site é que decide se ele vira cliente.' }
    )
  },

  @{
    slug = "neg-roi"
    title = "Medindo o retorno da tecnologia: o básico de ROI"
    description = "Como calcular o retorno de investimento em tecnologia: antes e depois, em tempo e em dinheiro."
    excerpt = "Tecnologia sem retorno medido é despesa adiada. Veja como calcular o ROI do básico."
    category = "Negócios"
    minutes = "5 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Quer tecnologia com retorno medido?"
    ctaText = "A AddInfo Brasil planeja projetos com métrica de resultado desde o início."
    sections = @(
      @{ h2 = "A pergunta simples"; paragraphs = @(
          'ROI de tecnologia é uma conta de antes e depois: quanto essa ferramenta economiza ou fatura por mês? A resposta em dinheiro, comparada ao custo mensal, é o cálculo que falta em quase todo projeto.')
        }
      @{ h2 = "Como fazer na prática"; list = @(
          'Meça o antes: quantas horas a tarefa leva, quantos processos travaram.',
          'Meça o depois: mesma tarefa com a ferramenta.',
          'Transforme a diferença em valor (hora de trabalho, venda a mais).',
          'Compare com o custo mensal da solução.',
          'Revisite a cada trimestre — o cenário muda.') }
      @{ h2 = "O retorno que não se mede"; paragraphs = @(
          'Nem tudo vira número na primeira vista: menos estresse, mais previsibilidade, cliente satisfeito voltando. Ainda assim, mire no mensurável primeiro; o restante, bom bônus.')
        quote = 'Tecnologia não se compra por orçamento. Se ajusta por retorno — com número na ponta da caneta.' }
    )
  },

  @{
    slug = "neg-futuro"
    title = "Tecnologia no Brasil: tendências para os próximos anos"
    description = "Panorama das tendências tecnológicas que vão afetar PMEs brasileiras: IA, automação, segurança e digitalização."
    excerpt = "IA, automação, segurança e digitalização: o que as PMEs brasileiras devem observar."
    category = "Negócios"
    minutes = "6 min de leitura"
    date = "12/08/2026"
    dateISO = "2026-08-12"
    generate = $true
    ctaTitle = "Se preparar para o que vem?"
    ctaText = "A AddInfo Brasil ajuda a empresa a entrar nas tendências no tamanho certo."
    sections = @(
      @{ h2 = "O que está mudando o jogo"; paragraphs = @(
          'Três ondas estão chegando juntas às empresas: inteligência artificial barata e acessível, automação de processos simples e uma cobrança crescente por segurança e dados. Quem adota cedo, em escala pequena e bem medida, sai na frente.')
        }
      @{ h2 = "Nas PMEs brasileiras"; list = @(
          'IA em vendas e orçamentos — o ganho mais imediato.',
          'Automação no backoffice para o time se dedicar ao cliente.',
          'Segurança deixando de ser opcional: LGPD e ransomware.',
          'Digitalização de pontos físicos (pedido, pagamento, atendimento).') }
      @{ h2 = "O conselho pro seu ano"; paragraphs = @(
          'Escolha uma frente — IA, automação, segurança — e termine antes de começar outra. Tecnologia dá retorno em quem foca, não em quem espalha. O futuro pertence menos a quem sabe tudo e mais a quem executa o básico bem.')
        quote = 'Não é preciso adivinhar o futuro. Basta estar pronto para a próxima onda — com os fundamentos no lugar.' }
    )
  }
)