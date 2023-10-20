# Visão geral dos conceitos de nuvem

Computação em nuvem é a entrega sob demanda de poder computacional, banco de dados, armazenamento, aplicativos e outros recursos de TI pela internet com uma definição de preço conforme uso.

Infraestrutura tradicional x IaC
A computação em nuvem permite que você deixe de pensar em sua infraestrutura como hardware e passe a pensar nela e usá-la como software

Modelo de computação tradicional

* Infraestrutura como hardware
* Soluções de hardware
  
  * Exigem espaço, equipe, segurança física, planejamento, despesas de captal.

  * Tem um ciclo longo e muitas vezes demorado de aquisição de hardware

  * Exigem provisionamento de capacidade por meio da tentativa de adivinhar os picos máximos teoricos

Modelo de computação em nuvem

* Soluções de software
  
  * São flexíveis escaláveis e resilientes

  * Podem mudar com mais rapidez, facilidade e economia do que as soluções de hardware

  * Eliminam as tarefas monolíticas de trabalho pesado e alguns casos repetitivos

Modelo tradicional

* Investimento em datacenter com base em previsões
* Capacidade do servidor superestimada = Servidor com alta capacidade com uso reduzido
* Capacidade de servidor subestimada = Servidor de baixa capacidade com uso acima da capacidade
* Semanas para obter os recursos desejados

Modelo em nuvem

* Pague somente pelo que consumir
* Escalabilidade sob demanda
* Minutos para obter os recursos desejados

Modelos de serviço em nuvem

* IaaS : Infraestrutura como seviço -> Mais controle sobre os recursos de TI
* PaaS : Plataforma como serviço
* SaaS : Software como serviço -> Menos controle sobre os recursos de TI

Recursos gerenciados

* TI Tradicional : Applications, Data, Runtime, Middleware, Operating System, Virtualization, Servers, Storage, Networking
* IaaS : Applications, Data, Runtime, Middleware
* PaaS : Applications, Runtime
* SaaS : Sem administração de recursos, apenas consumo de serviço.

Infraestrutura como serviço(IaaS)

* O cliente tem mais flexibilidade em relação à configuração de rede e armazenamento
* O cliente é responsável por gerenciar mais aspectos da segurança
* O cliente é quem configura os controles de acesso

Exemplo de alguns serviços gerenciados pelo cliente

* Amazon ECS
* Amazon Elastic Block Store(Amazon EBS)
* Amazon Virtual Private Cloud(Amazon VPC)

Plataforma como Serviço(SaaS)

* O cliente não precisa gerenciar a plataforma subjacente
* A AWS gerencia o sistema operacional, a aplicação de patches de banco de dados, a configuração de firewall e a recuperação de desastres
* O cliente pode se concentrar no gerenciamento de códigos ou dados

Exemplo de alguns serviços gerenciados pela AWS

* AWS Lambda
* Amazon Relational Database Service(Amazon RDS)
* AWS Elastic Beanstalk

Software como serviço(SaaS)

* O software é hospedado de maneira centralizada
* Licenciado em um modelo de assinatura ou pagamento conforme uso
* Os serviços normalmente são acessados por meio de um navegador WEB, um aplicativo movel ou uma interface de programação de aplicativos(API)
* Os cliente não precisam gerenciar a infraestrutura que oferece o serviço

Exemplos de SaaS

* AWS Trusted Advisor
* AWS Shield
* Amazon Chime

Modelos de implantação de computação em nuvem

* Nuvem : 100% implantado em nuvem
* Híbrida : Parte e nuvem e parte local
* Local : Implantada no local(Nuvem privada)

Espaço de TI Tradicional           |                                | AWS
:---:                              | :---:                        | :---:
Firewalls, ACLs, Administradores   |Segurança                       | Grupos de Segurança, ACLs de Rede, IAM
Roteador, Pipeline de Rede, Switch | Redes                          | Elastic Load Balancing, Amazon VPC
Servidores Locais, Virtualização   | Computação                     | AMI, Instancias do Amazon EC2
DAS, SAN, NAS RDMS                 | Armazenamento e Banco de Dados |Amazon EBS, Amazon EFS, Amazon S3, Amazon RDS

Modelo de Responsabilidade Compartilhada AWS

Cliente

* Respensabilidade pela segurança "NA" nuvem:
  * Dados do cliente, Plataforma, Aplicativos, Gerenciamento de identidade e Acessos
  * Configuração de Sistema Operacional, Rede e Firewall
  * Criptografia de dados do lado do cliente e Autenticação da Integridade dos Dados
  * Criptografia no lado do servidor(Sistema de Arquivos e/ou Dados)
  * Proteção do Tráfego de Rede(Criptografia, Integridade, Identidade)

AWS

* Respensabilidade pela segurança "DA" nuvem
  * Software
  * Computação, Armazenamento, Banco de Dados, Rede
  * Infraestrutura Global de Hardware/AWS
  * Regiões, Zonas de disponibilidade, Pontos de Presença

Infraestrutura Global

A Infraestrutura global dos Cloud Providers foi projetada e criada para oferecer um ambiente de computação em nuvem, flexível, escalável, confiável e seguro com desempenho de rede global de alta qualidade.

Regiões

A AWS tem o conceito de uma Região, que é um local físico em todo o mundo onde agrupamos Datacenter. Chamamos cada grupo de datacenters
lógicos de zona de disponibilidade.

Cada região da AWS consiste em várias AZS isoladas e separadas fisicamente em uma área geográfica.

Estrutura de uma Região

* Uma Região é uma área geográfica
  * A replicação de dados entre regiões é feita por você
  * A comunicação entre regiões usa a infraestrutura de rede da backbone da AWS
  * Cada região fornece redundância total e conectividade com a rede
  * Uma região normalmente consiste em duas ou mais zonas de disponibilidade

O que levar em consideração na escolha?

* Determine a região certa para Serviços, Aplicativos e Dados com base nesses fatores:
  * Governança de dados, requisitos legais
  * Proximidade com os clientes(Latência)
  * Serviços disponíveis na região
  * Custos(Variam por região)

Zona de disponibilidade(AZ)
Uma Zona de disponibilidade(AZ) é um ou mais datacenters distintos com energia, rede e conectividade redundantes em uma região da aws.

As AZs proporcionam aos clientes a capacidade de operar aplicativos e bancos de dados de produção com alta disponibilidade, tolerância a falhas escalabilidade em níveis superiores aos que um único datacenter podem oferecer

Características de uma zona de disponibilidade(AZ)

* Cada região tem várias zonas de disponibilidade
  * Cada zona de disponibilidade é uma partição totalmente isolada da infraestrutura da AWS
    * No momeno, existem 69 zonas de disponibilidade em todo o mundo
    * As zonas de disponibilidade consistem em datacenters distintos
    * Elas são projetadas para isolamento de falhas
    * Elas são interconectadas em outras zonas de disponibilidade usando redes privadas de alta velocidade
    * Você escolhe suas zonas de disponibilidade
    * A AWS recomenda a replicação de dados e recursos entre zonas de disponibilidade para fins de resiliência

  * Elasticidade e escalabilidade
    * Infraestrutura elástica; Adaptação dinâmica da capacidade
    * Infraestrutura escalável; Adapta-se para acomodar o crescimento
  * Tolerância a falhas
    * Continua funcionando corretamente na presença de uma falha
    * Redundancia integrada de componentes
  * Alta disponibilidade
    * Alto nível de desempenho operacional
    * Tempo de inatividade minimo
    * Sem intervenção humana

## Redes e entregas de conteudo

* Amazon Virtual Private Cloud(Amazon VPC)
  * Permite provisionar uma seção isolada logicamente da nuvem AWS onde você pode executar recursos AWS em uma rede virtual que você mesmo define
    * Fornece controle sobre seus recursos de rede virtual, incluindo:
      * Seleção do intervalo de endereços IP
      * Criação de sub-redes
      * Configuração de tabelas de rotas e gateways de rede
      * Permite personalizar a configuração de rede para sua VPC
      * Permite usar várias camadas de segurança

VPCs

* Logicamente isolada de outras VPCs dedicadas a sua conta AWS
* Pertencem a uma unica região da AWS e podem abranger várias zonas de disponibilidade
  
Sub-redes

* Intervalo de endereços IP que dividem uma VPC
* Pertencem a uma unica zona de disponibilidade
* Classificadas como públicas ou privadas
  
Ao criar uma VPC, você a atribui a um bloco CIDR IPV4(Intervalo de endereços IPVA privados)

* Você não pode alterar o intervalo de endereços depois de criar a VPC
* O maior tamanho de bloco CIDR IPVA é /16 ou 65.536 endereços
* O menor tamanho de bloco CIDR IPV4 é /28 ou 16 endereços
* O IPV6 também é compatível (Com um limite de tamanho de bloco diferente)
* Os blocos CIDR de sub-redes não podem se sobrepor

Tabela de roteamento(Amazon Route Table)

* Uma tabela de rotas contém um conjunto de regras (Ou ROTAS) que você pode configurar para redirecionar o tráfego de rede da sub-rede
* Cada rota especifica uma origem e um destino
* Por padrão, toda tabela de rotas contém uma rota local para comunicação dentro da VPC
* Cada sub-rede deve estar associada a uma tabela de rotas(No máximo uma)

Sub-redes

* Uma subnet é uma seção de uma VPC em que você pode agrupar recursoscom base nas necessidades operacionais ou de segurança.
  * As subnets podem ser publicas ou privadas.
  * As subnets publicas contêm recursos  que precisam ser acessíveis ao publico, como o site de uma loja online.
  * As subnets privadas contêm recursos que devem ser acessíveis apenas por meio de sua rede privada, como um banco de dados que contêm informações pessoais dos clientes e histórico de pedidos.

Uma subnet tem 5 endereços de IPs reservados:

Endereços IP para o bloco CIDR 10.0.0.0/24   | Reservado para
:------: | :------:
10.0.0.0 | Endereço de rede
10.0.0.1 | Comunicação interna
10.0.0.2 | Resolução do domain name system(DNS)
10.0.0.3 | Uso futuro
10.0.0.255 | Endereço de transmissão de rede

Internet Gatewey(IGW)

Para permitir que o tráfego público da internet acesse sua VPC, conecte um Gateway de internet na VPC. Um Internet Gatewey é uma conexão entre em VPC e a internet como sendo semelhante a uma porta que os clientes usam para entrar numa cafeteria. Sem um internet gateway, ninguém pode acessar os recursos da sua VPC.

Para tornar uma subrede pública, anexe um gatewey da internet a VPC e adicione uma rota a tabela de rotas para enviar tráfego não local por meio do Gatewey da Internet para a internet.

## Nat Gatewey

Um Gatewey de conversão de endereços de rede(NAT) permite que instâncias em uma sub-rede privada se conectem a internet ou a outros serviços da AWS, mas impede que a internet inicie uma conexão com essas instâncias. Em resumo o NAT faz uma mascara de IP sobre o IP privado antes de sair para a internet e vice-versa. Uma tabela sub-rede que está associada a um Internet Gatawey é pública e uma tabela sub-rede que está associada a um Nat Gatewey é privada

Virtual Private Gateway

Para acessar recursos privados em sua VPC, você pode usar um Virtual Private Gateway. O Virtual Private Gateway permite que você estabeleça uma conexão de rede privada virtual(VPN) entre sua VPC e uma rede privada, como um datacenter local ou rede corporativa interna. Ele permite o tráfego para a VPC apenas se vier de uma rede aprovada. Utiliza a internet, em horários de pico pode não ter um bom funcionamento.

AWS Direct Connect

O AWS Direct Connect permite estabelecer uma conexão de rede dedicada e privada entre a rede e um dos locais do DC. Essa conexão privada pode reduzir os custos de rede, aumentar a taxa de transferência de largura de banda e oferecer uma experiência de rede mais consistente do que as conexões baseadas na internet.

Trafego de rede em uma VPC

Quando um cliente solicita dados de um aplicativo hospedado na nuvem AWS, essa solicitação é enviadacomo um pacote. Um pacote é uma unidade de dados enviada pela internet ou por uma rede.

Ela entra em um VPC por meio de um Internet Gatewey. Antes que um pacote possa entrar em uma subnet ou sair de uma subnet, ele verifica as permissões. Essas permissões indicam que enviou o pacote e como o pacote está tentando se comunicar com os recursos em uma subnet.

O componente na VPC que verifica as permissões de pacote para a subnet é uma Lista de Controle de Acesso a Rede(ACL). Uma Lista de Controle de Acesso a Rede(ACL) é um firewall virtual que controla o tráfego de entrada e saída da subnet. Uma ACL é um firewall a nível de subnet e não de instância.

Segurança da VPC - Security Group

Os grupos de Segurança atuam no nível de instância

Entrega de Conteúdo e Latência de Rede

Rede de Entrega de Conteúdo (CDN)

* É um sistema distribuído globalmente de servidores de armazenamento em cache
* Armazena cópias de arquivos comumente solicitados(Conteúdo estático em cache)
* Fornece uma cópia local do conteúdo solicitado de um ponto de presença de cache próximo
* Acelera a entrega de conteúdo dinâmico
* Melhora o desempenho e a escalabilidade do aplicatico

## Amazon CloudFront

* Serviço de CDN rápido, global e seguro
* Rede global de pontos de presença e pontos de presença de cache regionais
* Modelo de autoatendimento
* Definição de preço com pagamento conforme o uso

Infraestrutura do Amazon CloudFront

* Pontos de presença
  * Rede de datacenters que o CloudFront usa para fornecer conteúdo popular rapidamente aos clientes

* Cache de ponto regional
  * Localização do CloudFront que armazena em cache conteúdo que não é popular o suficiente para permanecer em um ponto de presença. Ele está localizado enre o servidor de origem e o ponto de presença global.

Definição de preços do Amazon CloudFront

* Transferencia de dados para fora
  * Cobrado pelo volume de dados transferidos do ponto de presença do Amazon ClouFront para a internet ou para sua origem
* Solicitações HTTP(s)
  * Cobrado pelo número de solicitações HTTP(s)
* Solicitações de invalidação
  * Não há cobrança adicional para os primeiros 1.000 caminhos solicitados para a invalidação a cada mês. Depois disso, 0,005 USD por caminho solicitado para invalidação

* IP dedicado SSL personalizado
  * 600 USD por mês para cada certificado SSL personalizado associado com um ou mais distribuições do CloudFront usando a versão com IP dedicadodo do suporte de certificado SSL personalizado.

## Formas de Interagir com a AWS

### AWS Management Console

A AWS Management Console é uma interface baseada na WEB para acessar e gerenciar recursos AWS. Você pode acessar rapidamente os serviços usados recentemente e pesquisar outros serviços por nome, palavra-chave ou acrôimo.

O console inclui assistente e fluxos de trabalho automatizados que podem simplificar o processo de conslusão de tarefas.

Você também pode usar o aplicativo móvel do console AWS para realizar tarefas como o monitoramento de recursos, visualização de alarmes e acesso a informações de faturamento. Multiplas identidades podem permanecer conectadas ao aplicativo móvel do console AWS ao mesmo tempo.

### AWS Command Line Interface(AWS CLI)

Para economizar tempo ao fazer solicitações de API, você pode usar a AWS Command Line Interface(AWS CLI). A AWS CLI permite que você controle vários serviços AWS diretamente da linha de comando em uma ferramenta. O AWS CLI está disponível para usuários no Windows, MACOS e Linux.

Usando o AWS CLI, você pode automatizar as ações que seus serviços e aplicativos executampor meio de SCRIPTS. Por exemplo, você pode usar comandos para iniciar uma instância do Amazon EC2, conectar uma instância do EC2 a um grupo específico do Auto Scaling e muito mais.

### Kits de Desenvolvimento de Softwares (SDKs)

Outra opão para acessar e gerenciar os serviços da AWS são os Kits de Desenvolvimento de Softwares (SDKs). Os SDKs facilitam o uso dos serviços da AWS por meio de uma API projetada para sua plataforma ou linguagem de programação. Os SDKs permitem que você use os serviços da AWS com seus aplicativos existentes ou crie aplicativos totalmente novos que serão executados na AWS.

Para ajudá-lo a começar a usar SDKs, a AWS fornece documentação e código de amostra para cada linguagem de programação compatível. As linguagens de programação com suporte incluem C++, JAVA, .NET e muito mais.

Amazon Route S3

* É um servidor WEB do domain name system(DNS) altamente disponível e escalável
* É usado para rotear usuários finais para aplicativos da internet ao traduzir nomes(como www.example.com) para endereços IP numéricos (como 192.0.2.1) que os computadores usam para se conectarem aos outros
* É totalmente compatível com IPV4 e IPV6
* Conecta solicitações a infraestrutura executada na AWS e também fora da AWS
* É usada para verificar a integridade de seus recursos
* Recursos de fluxo de tráfego
* Permite registrar nomes de domínio

Opções de Roteamento com o Amazon Route 53

* Roteamento simples
  * Use em ambientes de servidor único

* Roteamento ponderado round robin
  * Atribua pesos a conjuntos de registros de recursos para especificar a frequência

* Roteamento de latência
  * Ajuda a melhorar seus aplicativos globais

* Roteamento de localização geográfica
  * Roteie o tráfego com base na localização de seus usuários

* Roteamento de geoproximidade
  * Roteie o tráfego com base na localização de seus recursos

* Roteamento de failover
  * Faça failover para um site de backup se o site principal se tornar inacessível

* Roteamento de respostas com valores múltiplos
  * Responda a consultas DNS com até 8 registros íntegros selecionados aleatoriamente
