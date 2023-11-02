## Noções básicas de Contêiner

Os contêineres são um método de virtualização de Sistema Operacional

Benefícios:

* Repetitível
* Ambientes de execução autônomos
* O software é executado da mesma forma em diferentes ambientes
* Lançamento e interrupção ou encerramento mais rápido do que máquinas virtuais
* Consistência dos ambientes
* Portabilidade

Docker

O Docker é uma plataforma de software que permite criar, testar e implantar aplicações rapidamente, você executa contêineres no Docker. Os contêineres são criados a partir de um modelo chamado imagem.

Um Contêiner tem tudo que é necessário para execução de um aplicativo.

O Docker é instalado em cada servidor que hospedará contêineres e fornece comandos simples que você pode usar para criar, iniciar ou interromper contêineres.

O docker é melhor empregado como uma solução quando você deseja:

* Padronizar ambientes
* Reduzir conflitos entre pilhas de linguagem e versões
* Usar contêineres como serviço
* Executar microserviços com implantações de código padronizadas
* Exigir portabilidade para processamento de dados

Amazon Elastic Conteiner Service

É um serviço de gerenciamento de contêineres altamente rápido e escalável.

Principais benefícios:

* Orquestra e execução de contêineres do Docker
* Mantém e escala a frota de Nós que executam seus contêineres
* Remove a complexidade de criação da infraestrutura

Integrado a recursos que são familiares para usuários de serviços do Amazon EC2

* Elastic Load Balancing
* Grupos de segurança do Amazon EC2
* Volumes do Amazon EBS
* Funções do IAM

Opções de cluster do Amazon ECS

Cluster do Amazon ECS baseado no Amazon EC2

Você gerencia:

* Contêiner
* Mecanismos do Docker
* Sistemas Operacionais convidados da VM no cluster do Amazon ECS

Cluster do Amazon ECS baseado no Fargate

Você gerencia:

* Contêiner

A aws gerencia:

* Mecanismos do Docker
* Sistemas Operacionais convidados da VM no cluster do Amazon ECS

Amazon ECR

O Amazon ECR é um registro de contêiner gerenciado do Docker que facilita o armazenamento, o gerenciamento e a implantação de imagens de contêineres do Docker.

Benefícios:

* Integração com Amazon ECS
* Suporte ao Docker
* Possibilita Colaboração em equipe
* Controle de acesso
* Integrações com produtos de terceiros

## AWS Lambda

O AWS Lambda é um serviço de computação sem servidor e orientado a eventos que permite executar código para praticamente qualquer tipo de aplicação ou serviço de backend sem provisionar ou gerenciar servidores.

* O código que você executa é uma função lambda
* Execute seu código em uma programação ou em resposta a eventos
* Seu código é executado somente quando é acionado
* Pague somente pelo tempo de computação que utilizar

Benefícios do AWS Lambda

* Oferece suporte a várias linguagens de programação
  * Java, Go, PowerShell, Node.js, C#, Python, Ruby
* Administração totalmente automatizada
* Tolerância a falhas integrada
* Oferece suporte a orquestração de várias funções
* Pay-per-use a definição de preço

Limites do AWS Lambda

Limites flexíveis por região

* Execuções simultâneas = 1.000
* Função e armazenamento de camadas = 75 GB

Limites Rígidos para funções individuais

* Alocação máxima de memória da função = 3.008 MB
* Tempo limite da execução = 15 Minutos
* Tamanho do pacote de implantação = 250 MB descompactados, incluindo camadas

Limites adicionais também existem. Os detalhes estão na documentação de Limites do AWS Lambda

Amazon EFS - Sistemas de Arquivos Compartilhados

O Amazon Elastic File System (EFS) foi projetado para fornecer um armazenamento de arquivos totalmente elástico sem servidor que ajuda a compartilhar dados de arquivos sem provisionar nem gerenciar a capacidade e a performance do armazenamento.

Também é possível utilizar o Amazon FSX for Windows file server.

Como funciona o EFS:

O Amazon EFS oferece suporte a duas formas de criptografia para sistemas de arquivos: criptografia em trânsito e criptografia em repouso. Você pode ativar a criptografia em repouso ao criar um sistema de arquivos do Amazon EFS. Se fizer isso, todos os seus dados e metadados serão criptografados.

Cargas de trabalho e aplicações:

* Diretórios iniciais
* Sistema de arquivos para aplicações empresariais
* Testes e desenvolvimento de aplicações
* Backups de Bancos de Dados
* Gerenciamento de conteúdos e serviços na WEB
* Fluxos de trabalhos de mídia
* Análise de dados de Big Data

Exemplo de comando para montar o sistema de arquivos em cada SO convidado
~~~

$ sudo mount -t nfs4 mount-target-DNS:/ ~/efs-mount-point

~~~

Amazon FSx - Para Windows File Server

Fornece armazenamento do sistema de arquivos compartilhado totalmente gerenciado para instâncias do Microsoft Windows EC2.

* Compatibilidade nativa do Microsoft Windows
* Novo sistema de arquivos de tecnologia(NTFS)
* Versão 2.0 a 3.1.1 do protocolo SMB(Bloco de mensagens do servidor nativo)
* Namespaces de sistema de arquivos distribuídos(DFS) e replicação DFS
* Integra-se ao Microsoft Active Directory e é compatível com listas de controle de acesso(ACLs) do Windows
* Compatível com armazenamento SSD de alta performance

O Amazon FSx for Windows File Server oferece suporte a um amplo conjunto de cargas de trabalho do Microsoft Windows.

* Diretórios iniciais
* Cargas de trabalho de aplicações lift-and-shift
* Fluxos de trabalho de mídia e entretenimento
* Análise de dados
* Gerenciamento de conteúdo e serviços na WEB
* Ambientes de desenvolvimento de software
