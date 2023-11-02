##  Introdução ao CloudTrail

* Registrar e monitorar a atividade do usuário
* Fornecer histórico de eventos da conta AWS
  * Ações executadas por meio do console de gerenciamento da AWS, SDK, AWS CLI
  * Aumentar a visibilidade da atividade do usuário e do recurso
  * Histórico de eventos de 90 dias fornecido por padrão, sem custo
* Identificar
  * Quem acessou sua conta
  * Quando e de onde
  * Qual ação eles realizaram em um serviço da AWS
* Ferramenta útil para
  * Realizar análise de segurança
  * Descobrir quais chamadas foram bloqueadas(Por exemplo, pelas políticas do IAM)

O CloudTrail possui cinco categorias de funcionalidades, sendo elas

CloudTrail Events

Um evento no CloudTrail é um registro de alguma atividade na sua conta, que pode ser categorizado como Management Events, Data Events e CloudTrail Insights Events.

Event History

No histórico de eventos, você podde visualizar ou fazer download dos últimos 90 dias de atividades na sua conta.

CloudTrail Trail

Utilizando o CloudTrail Trail, você consegue arquivar, analisar e responder por mudanças nos seus recursos. Com uma trilha, você consegue entregar os eventos diretamente em um Bucket do S3, além disso, é possível entregar e analisar os eventos do CloudWatch Events.

Management Events

Os eventos de gerenciamento prove informações sobre as operações realizadas nos recursos da sua conta, como por exemplo, quando você configura um security group, provisiona uma instância ou configura um log.

Data Events

Os eventos de gerenciamento prove informações sobre operações referentes aos dados dos seus recursos, como por exemplo, ações referentes aos seus objetos no Bucket do S3, atividades ao nível de suas tabelas no DynamoDB, funções lambdas e outros serviços que tem suporte a eventos de dados.

Insights Events

O AWS CloudTrail Insight ajuda os usuários da AWS a identificar e responder à atividade incomum associada às chamadas de API write analisando continuamente os eventos de gerenciamento do CloudTrail.

Os eventos fornecidos pelo Event History no console do CloudTrail são bastante úteis para analisar atividades recentes, porém eles são limitados a atividades recentes e não incluem todos os eventos possíveis que podem ser registrados pelo ClouTrail.

A exibição de eventos no console é limitado a região da AWS em que você está conectado.

Para criar um registro de atividade em sua conta da AWS que capta informações para todas as regiões da AWS, crie uma tilha.

Por padrão, quando você cria uma trilha no console do CloudTrail, ela é aplicada aos eventos de logs em todas as regiões.

Registrar eventos em todas as regiões da conta é uma prática recomendada.

## Monitoramento de Recursos na AWS

Para que você possa operar a AWS com eficiência, é necessário que as informações sobre os recursos da sua conta estejam sendo monitorados e sendo tratadas caso necessário.

* Quando preciso executar alguma ação na minha instância?
* Como está a capacidade dos meus servidores?
* Se um ou mais dos meus servidores obter uma grande carga de processamento e não dar conta, como serei alertado?
* Como monitorar e tratar falhas nos meus recursos?

AWS CloudWatch

O Amazon CoudWatch é um serviço de monitoramento e observabilidade criado para Engenheiros de Devops, Desenvolvedores, SRES e Gerentes de TI.

O cloudWatch monitora os recursos e as aplicações da AWS executadas em tempo real na AWS. Você pode usar o CloudWatch para monitorar e coletar métricas, que são variáveis mensuráveis de seus recursos e aplicativos.

Métricas do CloudWatch

Métricas são dados sobre a performance de seus sistemas e recursos na AWS, por padrão a AWS já oferece métricas de muitos serviços de forma gratuita(como instâncias do EC2, Volumes do Amazon EBS e instâncias do banco de dados do Amazon RDS).

Você também pode habilitar o monitoramento detalhado de alguns recursos, como instâncias do Amazon EC2 ou publicar suas próprias métricas de aplicações.

Os dados das métricas são mantidos por 15 meses, permitindo que você visualize os dados mais recentes e dados históricos.

Alarmes do CloudWatch

Um alarme de métrica observa uma única métrica do CloudWatch ou o resultado de uma expressão matemática baseada em métricas do CloudWatch. O alarme realiza uma ou mais ações com base no valor da métrica ou na expressão relativa a um limite em alguns períodos. A ação pode ser enviar uma notificação a um tópico do SNS, executar uma ação no EC2 ou executar uma ação no Amazon EC2 Auto Scaling ou criar um OpsItem ou incidente no Systems Manager.

Um alarme composto inclui uma expressão de regra que leva em conta os estados de outros alarmes que você criou. O alarme composto entrará no estado ALARM somente se todas as condições da regra forem atendidas. Os alarmes especificados na expressão de regra de alarme composto podem incluir alarme de métrica e outros alarmes compostos.

Estados de alarmes no ClodWatch

Um alarme tem estes estados possíveis

OK: A métrica ou a expressão está dentro do limite definido.

ALARM: A métrica ou a expressão está fora do limite definido.

INSUFFICIENT_DATA: O alarme acabou de ser acionado, a métrica não está disponível ou não há dados suficientes para a métrica determinar o estado do alarme.

Avaliar um alarme

Period(Período): É o intervalo de tempo para avaliar a métrica ou a expressão e criar cada ponto de dados de um alarme. Ele é expresso em segundos. Se você escolher um minuto como período, o alarme avaliará a métrica uma vez por minuto.

EVALUATION PERIODS(Períodos de avaliação): É o número de períodos mais recentes, ou pontos de dados, para avaliar quando determinar o estado de alarme.

DATAPOINTS TO ALARM(Pontos de dados para o alarme): É o número de pontos de dados dentro dos períodos de avaliação que devem estar violando para fazer com que o alarme passe para o estado ALARM.

Ações de um alarme

É possível especificar quais ações um alarme realizará ao mudar de estado entre os estados OK, ALARM E INSUFFICIENT_DATA.

O tipo de ação de alarme mais comum é notificar uma ou mais pessoas enviando uma mensagem a um tópico do Amazon Simple Notification Service.

Configurar Notificações do Amazon SNS

O Amazon CloudWatch usa o Amazon SNS para enviar e-mails. Primeiro, crie e se inscreva em um tópico do SNS. Ao criar um tópico do CloudWatch, você pode adicionar esse tópico do SNS para enviar uma notificação por e-mail quando o alarme muda de estado.

CloudWatch Logs

Você pode usar o Amazon CloudWatch Logs para monitorar, armazenar e acessar seus arquivos de logs em suas instâncias do Amazon Elastic Compute Cloud(Amazon EC2), no AWS CloudTrail, no Route S3 ou em outras origens.

O CloudWatch Logs permite centralizar os Logs de todos os sistemas, aplicações e produtos da AWS que você usa em um único serviço altamente escalável.

Recursos do CloudWatch Logs

O CloudWatch Logs permite consultar todos os Logs, qualquer que seja a origem, como um fluxo único e consistente de eventos ordenados por tempo.

É possível consultá-los e classificá-los com base em outras dimensões, agrupá-los por campos específicos, criar cálculos personalizados com uma linguagem de consulta poderosa e vizualizar dados de Logs em painéis.

* Consultar seus dados de Log
* Monitorar Logs de instâncias do Amazon EC2
* Monitorar eventos registrados do CloudTrail
* Retenção de Logs
* Arquivar dados de Logs
* Registrar consultas de DNS do Route 53

## Introdução ao Trusted Advisor

O Trusted Advisor inspeciona seu ambiente da AWS e faz recomendações quando há oportunidades para economizar dinheiro, melhorar a performance e a disponibilidade do sistema e ajuda a corrigirfalhas de segurança.

Use o console do Trusted Advisor para revisar os resultados da verificação da conta da AWS e, depois, siga as etapas recomendadas para corrigir qualquer problema.

* Se você tiver um plano de suporte básico ou desenvolvedor, poderá usar o console do Trusted Advisor para acessar todas verificações na categoria limites de serviço e seis verificações na categoria de segurança.
* Se você tiver um plano de suporte Busines, Enterprise On-Ramp ou Enterprise, poderá usar o console do Trusted Advisor e a API da AWS Support para acessar todas as verificações do Trusted Advisor.

Categorias de Verificação

* Otimização de custos: Recomendações que podem economizar dinheiro. Essas verificações destacam recursos não utilizados e oportunidade para reduzir sua fatura.
* Performance: Recomendações que podem melhorar a velocidade e a capacidade de resposta de suas aplicações.
* Segurança: Recomendações para configurações de segurança que podem tornar a solução da AWS mais segura.
* Tolerância a falhas: Recomendações que ajudam a aumentar a resiliência da sua solução da AWS. Essas verificações destacam falhas de redundância, limites de serviço atuais(Também conhecido como cotas) e recursos usados em excesso.
* Limites de serviço: Verifica o uso de sua conta e se sua conta se aproxima ou excede o limite(também conhecido como cotas) para serviços e recursos da AWS.

## Introdução ao Elastic Beanstalk

* Uma maneira fácil de colocar aplicativos web em execução
* Um serviço gerenciado que lida automaticamente com:
  * Provisionamento e configuração de infraestrutura
  * Implantação
  * Balanceamento de carga
  * Escalabilidade automática
  * Monitoramento de integridade
  * Análise e depuração
  * Registro de log
* Não há custo adicional para o Elastic Beanstalk
  * Pague somente pelos recursos subjacentes usados

Implantações do AWS Elastic Beanstalk

* Você gerencia:
  * Seu código
* A AWS Gerencia:
  * Servidor HTTP
  * Servidor de aplicativos
  * Intérprete de linguagem
  * Sistema Operacional
  * Host

Ele oferece suporte a aplicativos web escritos para plataformas comuns:

* JAVA, .NET, PHP, NODE.JS, PYTHON, RUBY, GO e DOCKER

Faça upload do seu código

* O Elastic Beanstalk lida automaticamente com a implantação
* Implanta em servidores como Apache, NGinx, Passenger, Puma e Microsoft Internet Information Services(IIS)
