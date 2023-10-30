### Economia e Faturamento

Três fatores fundamentais de custo com a AWS

Computação

* Cobrado por hora/seg
* Varia por tipo de instância
* Somente LInux

Armazenamento

* Cobrado normalmente por GB

Transferência de dados

* A saída é agregada e cobrada
* A entrada não tem cobrança(Hà exceções)
* Cobrado normalmente por GB

Pague menos ao fazer reserva

Economize até 75%

* Instância resevada com pagamento adiantado integral(Ou AURI)
* Instância resevada com pagamento adiantado parcial(Ou PURI)
* Instância resevada sem pagamentos adiantados(Ou NURI)

Modelo de definição de preço

Pague menos usando mais

Obtenha descontos baseados em volume:

Economia a medida que o uso aumenta

Definição de preço para serviços como:

* Amazon Simple Storage Service(Amazon S3)
* Amazon Elastic Block Storage(Amazon EBS)
* Amazon Elastic File System(Amazon EFS)

Quanto mais você usar menos pagará por GB

Vários serviços de armazenamento oferecem custos de armazenamento mais baixos com base nas necessidades.

Serviços sem custo

Amazon VPC, Elastic Beanstalk, Auto Scaling, AWS Cloud Formation, AWS Identity and Access Management(IAM)

Embora não haja cobrança por esses serviços, pode haver cobranças associadas a outros serviços da AWS usados com esses serviços.

Por exemplo, quando você dimensionar automaticamente instâncias do EC2 adicionais, haverá cobranças por essas instâncias.

Calculadora TCO da AWS

Use a calculadora TCO para:

* Estimar economia de custos
* Usar relatórios detalhados
* Modificar suposições

Calculadora mensal da AWS

Use a calculadora mensal para:

* Estimar custos mensais
* Identificar oportunidades para reduzir custoos mensais

Use modelos para comparar serviços e modelos de implantação

AWS Billing and Cost Management

O AWS Billing and Cost Management é o serviço que você usa para pagar sua fatura da AWS, monitorar seu uso e controlar seu custo.

O Billing and Cost Management permite prever e ter uma ideia melhor de quais serão os custos e uso no futuro para que você possa planejar com antecedência.

Painel de faturamento da AWS

O Painel de faturamento da AWS permite que você visualize o status das despezas acumuladas no mês da aws, identifique os serviços que representam a maior parte das despezas gerais e entenda em alto nível as tendências dos custos.

No painel de faturamento, você pode acessar várias outras ferramentas de gerenciamento de custos que podem ser usadas para estimar e planejar seus custos da AWS.

* Orçamento da AWS
* Relatórios de custos e uso da AWS
* AWS cost explorer

AWS Cost Explorer

O Cost Explorer é uma ferramenta gratuita que permite que você:

* Visualize gráficos de seus custos
* Visualize dados de custos dos últimos 13 meses
* Preveja quanto você provavelmente gastará nos próximos 3 meses
* Descubra padrões de gastos com recursos da AWS ao longo do tempo e identifique áreas problemáticas de custos
* Identifique os serviços que você mais usa
* Visualize métricas, como quais zonas de disponibilidade tem mais tráfego ou qual conta vinculada da AWS é mais usada

AWS Budgets

O AWS Budgets usa a visualização de custos fornecida pelo Cost Explorer para mostrar o status de seus orçamentos e para fornecer previsões de seus custos estimados.

Você também pode usar os orçamentos da AWS para criar notificações para quando exceder o orçamento do mês ou quando os custos estimados excederem o orçamento.

Relatório de uso de de custo

O relatório de uso e de custos da AWS é um local único para acessar informações abrangentes sobre uso e custos da AWS.

Essa ferramenta lista o uso de cada categoria de serviço usado por uma conta(e seus usuários) em itens de linha por hora ou diariamente, e qualquer imposto ativado para fins de alocação de impostos.

Planos de Suporte

O AWS suporte oferece quatro planos de suporte

* Suporte básico: Acesso a central de recursos, painel de status de serviço, perguntas frequentes sobre produtos, fórums de discussão e suporte a verificação de integridade.
* Suporte ao desenvolvedor: Suporte para desenvolvimento antecipado na AWS.
* Suporte comercial: Clientes que executam cargas de trabalho de produção
* Suporte empresarial: Clientes que executam cargas de trabalho comerciais e essenciais à missão

### Amazon Cloud Watch

Monitoramento de recursos na AWS

Para usar a AWS com eficiência, você precisa de informações sobre seus recursos da AWS:

* Como você sabe quando deve executar mais instâncias do EC2?
* A performance ou a disponibilidade do seu aplicativo estão sendo afetadas por falta de capacidade suficiente?
* Quanto de infraestrutura está sendo realmente usado?

O Amazon Cloud Watch é um serviço de monitoramento e observabilidade criado para engenheiros de DEVOPS, Desenvolvedores, SREs e Gerentes de TI.

O Cloud Watch monitora os recursos e as aplicações da AWS executados em tempo real na AWS. você pode usar o Cloud Watch para coletar e monitorar métricas, que são variáveis mensuráveis de seus recursos e aplicativos.

### AWS EC2 Auto Scaling

Monitora os aplicativos e ajusta automaticamente a capacidade para manter uma performance constante e previsível pelo menor custo possível.

Fornece uma interface de usuário simples e eficiente que permite criar planos de escalabilidade para recursos, incluindo:

* Instâncias do EC2 e Frotas Spot
* Tarefas do Amazon Elastic Container Service (Amazon ECS)
* Índices e tabelas do Amazon DynamoDB
* Réplicas do Amazon Aurora

Benefícios

* Ajuda a manter a disponibilidade do aplicativo
* Permite adicionar ou remover automaticamente instâncias do EC2 de acordo com as condições que você define
* Detecta instâncias do EC2 danificadas e aplicativos não íntegros e substitui as instâncias sem sua intervenção
* Fornece várias opções de escalabilidade - Manual, Programada, Dinâmica ou Sob Demanda e Preditiva

Auto Scaling Group
Um grupo de Auto Scaling é um conjunto de instâncias do EC2 que são tratadas como um agrupamento lógico para fins de escalabilidade automática e gerenciamento

### Banco de Dados

Não gerenciados
Escalabilidade, tolerância a falhas e disponibilidade são gerenciados por você.

Gerenciados
Normalmente escalabilidade, tolerância a falhas e disponibilidade são incorporados ao serviço.

Desafios dos Banco de Dados Relacionais

* Manutenção do servidor e consumo de energia
* Instalação de software e patches
* Backups de Banco de Dados e alta disponibilidade
* Limites de escalabilidade
* Segurança de dados
* Instalação e patches de Sistema Operacional

Tipos de Banco de Dados

Relacional

Exemplos tradicionais

* Microsoft SQL Server
* Oracle Database
* MYSQL

Não Relacional

Exemplos tradicionais

* MongoDB
* Cassandra
* Redis

Banco de Dados Relacional

Benefícios

* Facilidade de uso
* Integridade de Dados
* Redução do armazenamento de dados
* Linguagem comum(Linguagem de consulta estruturada ou SQL)

A opção Relacional ideal é quando

* Precisa de regras rígidas de esquema, conformidade com ACID e cumprimento de padrões de qualidade dos dados
* Não precisa de altíssima capacidade de leitura/gravação
* Não precisa de altíssima performance
  
Um RDBMS pode ser a melhor solução com menor esforço

Banco de Dados não Relacional(NoSQL)

Benefícios

* Flexibilidade
* Escalabilidade
* Alta performance
* APIs altamente funcionais

Opção não Relacional ideal é quando

* For necessário dimendionar o Banco de Dados horizontalmente para lidar com grandes volumes de dados
* Os dados não se adaptam bem aos esquemas tradicionais
* As taxas de leitura/gravação excedem as taxas economicamente razoáveis oferecidas pelo RDBMS tradicional

Amazon Relational Database Service(Amazon RDS)

* O Amazon RDS é um serviço gerenciado que configura e opera um Banco de Dados Relacional na nuvem
* O Amazon RDS permite que você se concentre no seu aplicativo para proporcionar a performance, a alta disponibilidade, a segurança e a compatibilidade necessárias
* Com o Amazon RDS, o foco passa para os dados e a otimização do aplicativo

Você gerencia

* Otimização de aplicativos

A AWS gerencia

* Instalação e patches do SO
* Instalação e patches de software de Banco de Dados
* Backups de Banco de Dados
* Alta disponibilidade
* Escalabilidade
* Energia e Servidores em rack e pilha
* Manutenção do Servidor

Mecanismos de Bancos de Dados

Instância principal de Banco de Dados Relacional do Amazon RDS

Classe de instância de Banco de Dados

* CPU
* Memória
* Desempenho de Rede

Armazenamento de instâncias de Banco de Dados

* Magnético
* De uso geral(Unidades de estado sólido ou SSD)
* IOPs provisionadas

Compatível com

* MySQL
* Amazon Aurora
* Microsoft SQL Server
* PostgreSQL
* MariaDB
* Oracle

Réplicas de leitura do Amazon RDS

Recursos

* Oferece replicação assíncrona
* Pode promovida a mestre, se necessário

Funcionalidade

* Use para cargas de trabalho do Banco de Dados com uso intenso de leitura
* Descarregar consultas de leitura

Amazon Aurora

Amazon Aurora é um mecanismo de Banco de Dados Relacional totalmente gerenciado e compatível com MySQL e PostgreSQL.

* Usado para o processamento transacional online(OLTP)
* Até 5 vezes a taxa de transferência do MySQL
* Até três vezes a taxa de transferência a taxa do PostgreSQL
* Replica dados de seis maneiras emtrês zonas de disponibilidade
* Requer pouca alteração na aplicação existente

Amazon Redshift

O Amazon Redshift é um serviço de Data Warehousing

* É usado para o processamento da análise de dados online(OLAP)
* Armazena conjuntos de dados muito grandes
  * Armazena dados altamente estruturados e acessados com frequência no Amazon Redshift
  * Também pode armazenar exabytes de dados estruturados, semiestruturados e não estruturados no Amazon S3

Amazon DynamoDB

Um serviço de Banco de Dados não relacional de documentos e chave-valor totalmente gerenciado

* Performance em qualquer escala
* Capacidade extrema de escalabilidade horizontal
* Sem servidor
* Programação orientada a eventos(Sem servidor)
* Criptografia, controle de acesso, backups
* Pronto para uso comercial

Funciona bem para aplicações que:

* Tem dados simples de alto volume
* Precisam ser dimensionadas rapidamente
* Não precisam de associações complexas
* Exigem taxa de transferência ultra-alta e baixa latência

Principais recursos

* Tabelas NoSQL
* Os itens podem ter atributos diferentes
* Armazenamento em cache de memória
* Suporte para picos de mais de 20 milhões de solicitações por segundo

### Segurança na nuvem AWS

Prática recomendada: Não use o usuário raiz da conta da AWS, exceto quando necessário

* O acesso ao usuário raiz da conta requer o login com o endereço de email e a senha que você usou para criar a conta

Ações de exemplo que só podem ser realizadas com o usuário raiz da conta

* Atualizar a senha do usuário raiz da conta
* Alterar o plano do AWS suporte
* Restaurar as permissões de um usuário do IAM
* Alterar as configurações da conta(Por exemplo, informações de contato, regiões permitidas)

O usuário raiz da conta te acesso irrestrito a todos os seus recursos

Para parar de usar o usuário raiz da conta

Etapa 1

* Enquanto estiver conectado como o usuário raiz da conta, crie um usuário do IAM para você mesmo. Salve as chaves de acesso se necessário
* Crie um grupo de IAM, atribua a ele permissões completas de administrador e adicione o usuário do IAM ao grupo
* Desabilite e remova as chaves de acesso do usuário raiz da conta, se elas existirem.
* Habilite uma política de senha
* Faça login com as novas credenciais de usuário de IAM
* Armazene as credenciais de usuário raiz da sua conta em um local seguro

Etapa 2

* Habilitar o multi-factor Authentication(MFA)
* Exija MFA para o usuário raiz da sua conta e para todos os usuários do IAM
* Você também pode usar a MFA para controlar o acesso às APIs de serviço da AWS

Opções para recuperar o token de MFA

* Aplicativos compatíveis com MFA virtual
  * Google authenticator
  * Authy Authenticator(Aplicativo Windows Phone)
* Dispositivos com chave de segurança U2F
  * Por exemplo, Yubikey
* Opções de MFA de hardware
  * Chaveiro ou cartão de exibição oferecido pela GEMALTO

Etapa 3

Usar o AWS Cloudtrail

O Cloudtrail rastreia as atividades dos usuários em sua conta

* Ele registra todas as solicitações de API para recursos em todos os serviços compatíveis com sua conta
  
O histórico básico de eventos do AWS Cloutrail é habilitado por padrão e gratuito

* Ele contém todos os dados de eventos de gerenciamento nos últimos 90 dias de atividade da conta

Para acessar o Cloudtrail

* Faça login no console de gerenciamento da AWS e escolha o serviço Cloudtrail
* Clique em event history para vizualizar, filtrar e pesquisar os últimos 90 dias de eventos

Para habilitar logs além de 90 dias e habilitar alertas de eventos específicos, crie uma trilha

* Na página Cloudtrail console trails, clique em create trail
* Atribua um nome a ela, aplique-a a todas as regiões e crie um novo Bucket do Amazn S3, para armazenamento de logs
* Configure restrições de acesso no Bucket do S3(Por exemplo, somente usuários admin podem ter acesso)

Etapa 4

Habilitar um relatório de faturamento, como o relatório de custos e uso da AWS

Os relatórios de faturamento oferecem informações sobre o uso dos recursos da AWS e os custos estimados para esse uso

A AWS entrega os relatórios para o Bucket do Amazon S3 que você especifica

* O relatório é atualizado pelo menos uma vez por dia
  
O relatório de custos e uso da AWS monitora seu uso da AWS e fornece cobranças estimadas associadas à sua conta da AWS por hora ou por dia

AWS Identity and Access Management(IAM)

Use o IAM para gerenciar o acesso aos recursos da AWS

* Um recurso é uma entidade em uma conta da AWS com a qual você pode trabalhar
* Exemplo de recursos: Uma instância do Amazon EC2 ou um Bucket do S3
* Controlar de modo seguro o acesso individual e de grupo aos seus recursos da AWS
* Integração a outros serviços AWSGerenciamento de identidade federado
* Permissões granulares
* Suporte a autenticação multifator
  
Controle quem pode encerrar instâncias do Amazon EC2

Defina direitos de acesso refinado

* Quem pode acessar o recurso
* Quais recursos podem ser acessados e o que o usuário pode fazer com esse recurso
* Como os recursos podem ser acessados
  
O IAM é um recurso da conta AWS gratuito

Componentes essenciais

* Usuário de IAM: Definido na sua conta AWS. Use credenciais para autenticar programaticamente ou pelo console de gerenciamento AWS.
* Grupo do IAM: Uma coleção de usuários do IAM que recebem autorização idêntica
* Política do IAM: Documento que define quais recursos podem ser acessados e o nível de acesso a cada recurso
* Função do IAM: Mecanismo que concede acesso temporário para fazer solicitações de serviço da AWS. Pode ser assumida por uma pessoa, aplicação ou serviço.

Grupos IAM

Um grupo IAM é um agrupamento de vários usuários.
Dessa forma você consegue especificar permissões para múltiplos usuários ao mesmo tempo, facilitando o gerenciamento de permissões.

Um usuário pode fazer parte de vários grupos.

Não é possível ter um grupo dentro de outro grupo.

É importante destacar que os usuários possuem suas próprias permissões individualmente, quando ele é adicionado no grupo, ele passa a ter as permissoões do grupo mais suas próprias permissões.

Um melhor gerenciamento é mover os usuários para grupos apropriados, ao invés de ficar alterando permissões individualmente.

Políticas do IAM

Você gerencia permissões para usuários do IAM, grupos e roles através da criação de policies e associando as mesmas ao usuário, grupo ou role.

Políticas gerenciadas

São policies standalone que voc~e associa a multiplos usuários, grupos ou rolesna sua conta.

As políticas gerenciadas podem ser "AWS MANAGED" ou "COSTUMER MANAGED".

Políticas inline

Policies da qual você cria e gerencia, são associadas diretamente a um único usuário, grupo ou role.

Estrutura:

~~~
{
  "Version": "2012-10-17",
  "Statement": [{
    "Effect": "effect",
    "Action": "action",
    "Resource": "arn",
    "Condition": {
      "condition": {
        "Key": "value"
      }
    }
  }]
}
~~~

* Efeito: O efeito pode ser permitido ou negado
* Ação: Tipo de acesso permitido ou negado
  * "action": "s3:getobject"
* Recursos: Recursos em que a ação atuará
  * "resource": "arn:aws:sqs:us-west-2:123456789012:queue1"
* Condição: Condições que devem ser atendidas para que a regra seja aplicada
  
~~~ 
"condition": {
  "stringequals": {
    "aws:username": "johndoe"
  }
}
~~~

ARN e Curingas

Os recursos são identificados usando o formato Amazon Resource Name(ARN)

* Sintaxe - arn:partition:service:region:account:resource
* Exemplo - "Recurso": "arn:aws:iam::123456789012:user/mmajor"
  
Você pode usar um curinga(*) para dar acesso a todas as ações para um serviço específico da AWS

Exemplos:

* "Action": "s3:*"
* "Action": "iam:*AccessKey*"

Policy Generator

Você pode gerar sua Policy de maneira facilitada através do serviço policy generator da AWS

<https://awspolicygen.s3.amazonaws.com/policygen.html>

Exemplo gerado:

~~~
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1698692224501",
      "Action": [
        "s3:CreateBucket",
        "s3:DeleteBucket"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
~~~

IAM Roles

Uma role é similar a um usuário, ou seja, na role possui policies com permissões com o que pode ou não ser feito com aquela role.

Porém ao invés de ficar associado a uma única pessoa, ela pode ser assumida por qualquer um.

Uma role não possui credenciais associadas a ela, as credenciais são criadas automaticamente e temporariamente, sempre de preferência para utilizar roles do que credenciais.

