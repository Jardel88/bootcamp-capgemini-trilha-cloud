# Amazon S3

Um Bucket é a nível de região

Um objeto de serviço de armazenamento

* Armazena quantidades enormes(Ilimitado) de dados não estruturados
* Os arquivos de dados são armazenados como objetos em um bucket que você define
* 5 TB é o tamanho máximo de arquivo de um único objeto
* Todos os objetos tem um URL exclisivo acessível globalmente por REST(Namespace Universal)
* Todos os objetos tem uma chave, um ID de versão, um valor, metadados e subrecursos

Um Bucket S3 oferece

* Durabilidade
  * Garante que os dados não sejam perdidos
  * O armazenamento S3 standard oferece 99,999999999% de durabilidade

* Disponibilidade
  * Acesse seus dados quando for necessário
  * A classe de armazenamento S3 standard foi criada para disponibilidade de 99,99%

* Escalabilidade
  * Capacidade praticamente ilimitada
  * Qualquer objeto único de 5 TB ou menos

* Segurança
  * Oferece controle de acesso refinado

* Performance
  * É compatível com vários padrões de design

Durabilidade

Primeiro, ele fornece durabilidade, que descreve a perda anual de objetos. Essa durabilidade significa que, todos os anos, há uma chance de 0,000000001% de ocorrer a perda de um objeto. Por exemple, se você armazenar 10.000 objetos no amazon S3, espere a perda média de um único objeto a cada 10.000.000 de anos.

O Amazon S3 armazena os objetos de modo redundante em múltiplos dispositivos, em várias instalações, na região do Amazon S3 que você designar. Ele foi criado para apoiar falhas simultâneas de dispositivos ao detectar rapidamente e reparar qualquer redundância perdida. O Amazon S3 também verifica regularmente a integridade dos seus dados usando as somas de controle.

Disponibilidade

O Amazon S3 também oferece 99,99% de desponibilidade, a qual se refere a sua capacidade de acessar os dados rapidamente quando você quiser. Ele também fornece uma capacidade praticamente ilimitada para armazenar os dados, por isso é escalável. O Amazon S3 tem configurações de segurança robustas. Ele proporciona muitas formas de controlar o acesso aos dados que você armazena e também permite criptografar os dados.

Abordagens para controle de acesso ao Amazon S3

Existem 3 abrodagens diferentes para configurar o acesso aos objetos em um Bucket S3

1 - Configuração de segurança padão do Amazon S3
   Por padrão quando um bucket é criado, todos objetos são de acesso privado
   Apenas o dono da conta tem acesso ao conteúdo

2 - Configuração de segurança do Amazon S3 para acesso público
   Fica visível para todos, ex: O Amazon S3 também serve para hospedar sites, um site normalmente é de acesso público, seu conteúdo fica visível para o público

3 - Política de acesso aplicada às configurações de segurança do Amazon S3

Proteção dos Buckets e objetos do Amazon S3

Os buckets e objetos do S3 recém-criados são privados e protegidos por padrão

Quando os casos de uso devem compartilhar dados do Amazon S3

* Gerencie e controle o acesso aos dados
* Adote o princípio do privilégio mínimo

Ferramentas e opções para controlar o acesso aos dados do Amazon S3

* Recurso de bloqueio de acesso público: Ativado em novos Buckets por padrão, simples de gerenciar
* Políticas do IAM: Uma boa opção quando o usuário pode autenticar usando o IAM
* Políticas de Bucket: Defina o acesso a um objeto ou bucket específico
* Listas de controle de acesso(ACLs): Um mecanismo de controle de acesso herdado
* Pontos de acesso S3: Você pode configurar o acesso com nomes e permissões específicos para cada aplicação
* URLs pré-assinados: Você pode conceder acesso por tempo limitado a outras pessoas com URLs temporárias
* Verificação de permissão do Bucket do AWS TRUSTED ADVISOR: Um recurso gratuito

Criptografia

A Criptografia codifica dados com uma chave secreta, o que os torna ilegíveis

* Somente quem tem a chave secreta pode decodificar os dados
* Opcionalmente, use o AWS Key Management Service(AWS KMS) para gerenciar chaves secretas

Criptografia no lado do servidor

* No Bucket, habilite esse recurso selecionando a opção de criptografia padrão
* O Amazon S3 criptografa os objetos antes de salválos em disco e os descriptografa quando você faz o download deles

Criptografia no lado do cliente

* Criptografe os dados no lado do cliente e faça upload dos dados criptografados no Amazon S3
* Nesse caso, você gerencia o processo de criptografia

Modelo de consistência de dados do Amazon S3

O Amazon S3 fornece consistência de leitura após gravação para PUTs de novos objetos no Bucket do S3

O Amazon S3 oferece consistência eventual para substituir PUTs e DELETEs

* Uma ação de substituição ou exclusão pode levar tempo para se propagar em todas as cópias de um objeto no Amazon S3
* Se você lê um arquivo existente imediatamente após atualizá-lo, poderá obter a versão mais antiga ou a versão mais recente

Classes de armazenamento no Amazon S3

* S3 Standard
  * Dados acessados com frequência, definição default
* S3 Standard IA
  * Dados duradouros acessados com pouca frequência
* S3 One Zone IA
  * Dados duradouros, não críticos e acessados com pouca frequência
* Amazon S3 Glacier ou Deep Archive
  * Arquivamento de dados raramente acessados

Amazon S3 Intelligent Tiering

Movimenta automaticamente os objetos entre classes de armazenamento com base nos padrões de acesso aos dados

Ciclo de vida no Amazon S3

Você pode configurar o ciclo de vida dos objetos para gerenciar como eles são armazenados durante todo o ciclo de vida. Uma configuração de ciclo de vida é um conjunto de regras que define as ações aplicadas pelo Amazon S2 a um grupo de objetos.

Assim que uma política do ciclo de vida é definida, os dados migram automaticamente para uma classe de armazenamento diferente sem causar alterações as aplicações. Configure uma política de ciclo de vida do Amazon S3 para excluir ou mover objetos com base na idade deles.

Padrões de uso comus do Amazon S3

Armazenar e distribuir conteúdo e mídia na WEB

Crie uma infraestrutura redundante, escalável e altamente disponível para hospedar vídeos, fotos ou músicas, com recursos de upload e download.

Um cenário de uso comum para o Amazon S3 é a hospedagem de mídia. Nesse caso, o Amazon S3 é usado para armazenar e distribuir vídeos, fotos, arquivos de música e outras mídias. Esse conteúdo pode ser distribuído diretamente do Amazon S3 porque cada objeto no Amazon S3 tem uma URL HTTP exclusiva.

Um segundo caso de uso do amazon S3 é usar o serviço para hospedar site estático. Em sites estáticos, as páginas da WEB individuais incluem conteúdo estático e também podem conter Scripts do lado do cliente.

Por outro lado, um site dinâmico depende de processamento do lado do servidor, o que pode envolver consultas de banco de dados que são executadas em resposta a Scripts do lado do servidor, como PHP, JSP ou ASP.NET. O Amazon S3 não oferece suporte a Scripts no lado do servidor. No entanto, A AWS oferece outros serviços que permitem hospedar sites dinâmicos.

Com essa abordagem, você não precisa executar uma máquina virtual que hospede um servidor na WEB. Na verdade, você não precisa executar um servidor. Porém pode hospedar um site mesmo assim. O Amazon S3 Oferece uma solução de baixo custo para hospedagem na WEB que inclui alta performance, escalabilidade e disponibilidade.

Backup e arquivamento de dados críticos

Amazon S3 como uma solução de backup de dados

Outra opção do Amazon S3 que você pode configurar nos buckets para alcançar níveis ainda mais altos de durabilidade é a replicação entre regiões. Na replicação entre regiões, os objetos qua são carregados em um bucket em uma região serão automaticamente copiados para outros Buckets do S3 em outras regiões.

Custos do Amazon S3

Com o Amazon S3, pague somente pelo que usar. Não há taxa mínima. Há quatro componentes de custo a considerar na escolha da classe de armazenamento do Amazon S3 mais adequada ao seu perfil de dados:

* Definição de preço do armazenamento
* Definição de preço de solicitações e recuperação de dados
* Definição de preço de transferência e aceleração de transferência de dados
* Definição de preço de recursos de gerenciamento de dados

Pague apenas pelo uso , incluindo:

* GBs de armazenamento (por mês). preços diferentes por região e por classe de armazenamento.
* Transfira para outras regiões ou para a internet.
* PUT, COPY, POST, LIST, GET, SELECT, transição de ciclo de vida, solicitações de recuperação de dados

Não há cobrança para

* Transferencia de dados de entrada da internet para o Amazon S3.
* Transfência entre buckets do S3 ou do Amazon S3 para qualquer serviço na mesma região da AWS.
* Tranferência para o Amazon ClodFront.
* Solicitações Delete e Cancel.

Resumo dos conceitos abordados

* Os buckets devem ter um nome exclusivo globalmente e são definidos no nível de região.

* Os Buckets são privados e protegidos por padrão.

* A segurança do Amazon S3 pode ser configurada com políticas do IAM, políticas de Bucket, listas de controle de acesso, pontos de acesso do S3 e URLs pré-assinadas.

* O Amazon S3 oferece consistência eventual para substituir PUTs e DELETEs.

* 5 TB é o tamanho máximo de um único objeto.

* O Amazon S3 é frequentemente usado como um armazenamento de dados para computação e análise, como um serviço de backup e arquivamento para dados críticos e hospédagem de sites.

## Arquitetura Cumpute

Serviços de Computação

A utlização do(s) serviços(s) de computação ideal(is) vai depender muito do seu caso de uso, das características da arquitetura, aplicação, entre outros fatores importantes para tomada de decisão.

Por exemplo, alguns aspectos que devem ser considerados:

* Qual é o design de seu aplicativo?
* Quais são seus padrões de utilização?
* Quais definições de configuração voc~e deseja gerenciar?
* A administração daquela ferramenta/produto/serviço deve ser feita pelo time?
* Custo é um ponto a ser levado em consideração no desenho?

Selecionar a solução de computação equivocada para uma determinada arquitetura pode levar a uma menor eficiência de performance, custos entre outros fatores, por isso é importante o conhecimento das opções disponíveis de computação na AWS.

Amazon Elastic Compute Cloud (Amazon EC2)

* Fornece máquinas virtuais chamadas de instâncias do EC2 na nuvem
* Fornece controle total sobre o sistema operacional selecionado(Windows ou Linux) em cada instância específica
* Você pode executar instâncias de qualqer tamanho em uma zona de disponibilidade em qualquer lugar do mundo
* Execute instâncias com apenas alguns cliques ou uma linha de código, e elas estarão prontas em minutos
* Para provisionar instâncias, você precisa escolher AMIs(Imagem de máquina na Amazon)
* Permite que você pague apenas pela capacidade que utilizar

Uma instância do EC2 é uma máquina virtual que é executada em um host físico

Você pode escolher diferentes configurações de CPU e capacidade de memória

* Suporte a diferentes opções de armazenamento
  * Armazenamento de instâncias
  * Amazon elastic block store(Amazon EBS)
* Fornece conectividade de rede

Para provisionar uma instância na AWS, é necessário seguir algumas etapas, as quais o assistente de execução de instância no console de gerenciamento da AWS vai percorrer

Esses pontos são de extrema importância, pois tem como responsabilidade toda a configuração o gerenciamento e características da sua EC2

* Parâmetros de configuração de execução de instâncias essenciais, são 8 etapas:
  * Imagem de máquina da Amazon(AMI)
  * Tipo de instância(Poder computacional)
  * Posicionamento e endereçamento de rede(Configuração VPC)
  * Função assumida(Se a instância irá assumir alguma role)
  * Dados do usuário(Algo que a instância irá executar na primeira vez que for provisionada)
  * Armazenamento de instância ou Amazon EBS(Modelo de disco de armazenamento)
  * Grupo de segurança(O que e quais portas estarão liberadas)
  * Par de chaves(O acesso as instãncias é feito via chave SSH)

Amazon AMI

* Imagem da máquina da Amazon(AMI)
  * É um modelo usado para criar uma instância do EC2(Que é uma máquina virtual, ou VM, executada na nuvem da AWS)
  * Contém um sistema operacional Windows ou linux
  * Muitas vezes, ele também tem software pré-instalado

Opções de AMI

* Quick start: AMIs do Linux ou Windows fornecidas pela AWS
* Minhas AMIs: Todas as AMIs que você criou
* AWS Market Place: Modelos pré-configurados de terceiros
* AMIs da comunidade: AMIs compartilhadas por outras pessoas; use por sua conta e risco

Benefícios

* Repetibilidade
  * Uma AMI pode ser usada repetidamente para executar instâncias com eficiência e precisão
* Capacidade de Reutilização
  * Instâncias executadas a partir da mesma AMI são configuradas de forma idêntica
* Capacidade de recuperação
  * Você pode criar uma AMI em uma instância configurada como um backup restaurável
  * Você pode substituir uma EC2 com falha executando uma nova instância da mesma AMI

Tipo de Instância

considere o caso de uso:

* Como será usada a instância do EC2 que você irá criar?
* O tipo de instância que você escolher determinará
  * Memória(RAM)
  * Capacidade de processamento(CPU)
  * Armazenamento em disco e tipo de disco(Armazenamento)
  * Performance de rede

Categorias de tipo de instância

* Uso geral
* Otimizada para computação
* Otimizada para memória
* Otimizada para armazenamento
* Computação acelerada

Os tipos de instância oferecem família, geração e tamanho.

Um tipo de instância do EC2 define uma configuração de características de performance da CPU, da memória, do armazenamento e da rede que fornece um determinado nível de performance computacional.

Escolha o tipo de instância que atenda:

* As necessidades de performance da aplicação
* Os requisitos de custo

Ao criar uma nova instância

* No console do EC2, use a página Instance Types para filtrar pelas características escolhidas
* Recomendação: A última geração de uma família de instâncias normalmente tem melhor custo benefício

Se você já tiver uma instância existente:

* Obtenha recomendações para otimizar o tipo de instância usando o AWS COMPUTE OPTIMIZER
* Você pode avaliar as recomendações e modificar a instância de acordo

Configurações de Rede

Onde a instância deve ser implantada?

* Identificar a VPC e, opcionalmente, a Sub-rede.
  
Um endereço IP público, deve ser atribuído automaticamente?

* Para torná-lo acessível à internet

Função do IAM

O software na instância do EC2 precisará interagir com outros serviços da AWS?

* Em caso positivo, anexe uma função do IAM apropriada

A função do AWS Identity and Access Management(IAM) anexada a uma instância do EC2 é mantida em um perfil de instância

Você não está restrito a anexar uma função apenas na execução da instância.

* Você também pode anexar uma função a uma função já existente

Dados do Usuário

Opcionalmente especifique um script de dados do usuário na execução da instância

Use scripts de dados do usuário para personalizar o ambiente de tempo de execução de sua instância

* O script é executado na primeira vez que a instância é iniciada

Pode ser usado estrategicamente

* Por exemplo, reduza o número de AMIs personalizadas que você cria e mantém

Metadados da Instância

Metadados da instância são informações sobre a instância

* Eles estão acessíveis na instância, no URL HTTP://169.254.169.254/LATEST/META-DATA/
* Podem ser recuperados em um script de dados do usuário

Armazenamento

Configurar o volume raiz(Toda VM já vem com um volume raiz)

* Onde o sistema operacional convidado está instalado

Anexar volumes de armazenamento adicionais(Opcional)

* A AMI já pode incluir mais de um volume

Para cada volume especifique

* O tamanho do disco(em GB)
* O tipo de volume
  * Diferentes tipos de unidades de estado sólido(SSDs) e unidades de disco rígidos(HDDs) estão disponíveis
* Configurar se quando a instância for encerrada remover o volume ou não
* Se a criptografia precisar ser usada

Armazenamento de instâncias(Efêmero)

Um armazenamento de instâncias fornece armazenamento não persistente a uma instância

* Os dados são armazenados no mesmo servidor físico em que a instância é executada

Características

* armazenamento temporário em nível de bloco
* Usa HDD ou SSD
* Os dados do armazenamento de instâncias serão perdidos quando a instância for interrompida ou encerrada

Exemplos de caso de uso:

* Buffers
* Cache
* Dados transitório

Amazon EBS

Os volumes de armazenamento EBS fornecem armazenamento persistente à rede para uma instância do EC2

Características

* Armazenamento em nível de bloqueio persistente
* Pode associar a qualquer instância na mesma zona de disponibilidade
* Usa HDD ou SSD
* Pode ser criptografado
* Suporte a snapshots que persistem no S3
* Os dados persistem independentemente da vida útil da instância

Exemplos de caso de uso:

* Banco de dados autônomo
* Armazenamento de dados de aplicações gerais

Tipos de Volume Amazon EBS Compatíveis com SSD

Os volumes compatíveis com SSD do Amazon EBS são adequados para casos de uso que o foco de performance está no IOPS.

SSD de uso geral(gp2)

* Equilibra preço e performance para uma ampla variedade de carga de trabalho

Casos de uso

* Recomendado para a maioria das cargas de trabalho
* Pode ser um volume de inicialização

SSD de IOPS provisionadas(io1)

* Volume SSD de melhor performance
* Adequado para cargas de trabalho de missão crítica, de baixa latência ou de alta taixa de transferência

Casos de uso

* Aplicações essenciais de negócios que exigem performance de IOPS sustentada
* Cargas de trabalho de banco de dados grandes
* Cargas de trabalho transacionais
* Pode ser um volume de inicialização

Tipos de Volume Amazon EBS Compatíveis com HDD

Os volumes compatíveis com HDD do Amazon EBS funcionarão bem quando o foco estiver na taxa de transferência.

HDD com taxa de transferência otimizada(st1)

* Tipo de volume de baixo custo
* Criada para cargas de trabalho frequentemente acessadas e alto uso de taxa de transferência

Casos de uso

* Cargas de trabalho de Streaming
* Big data
* Data warehouses
* Processamento de logs
* Não pode ser um volume de inicialização

Cold HDD(sc1)

* Volume de HDD de menor custo
* Projetado para cargas de trabalho acessadas com menos frequencia

Casos de uso

* Armazenamento focado na taxa de transferência para grandes volumes de dados acessados raramente
* Casos de uso nos quais o menor custo de armazenamento é importante
* Não pode ser um volume de inicialização

Amazon EC2

Alguns tipos de instâncias do EC2 podem ser otimizadas para o EBS

Benefícios

* Fornece uma conexão de rede dedicada ao volume EBS
* Melhora a performance de E/S
* Melhorias na performance serão obtidas se você usar um tipo de instância baseado em Nitro System do Amazon EC2

Uso

* Para tipos de instância otimizado para EBS, a otimização é habilitada por padrão
* Para outros tipos de instâncias compatíveis, a otimização deve ser habilitada manualmente

Tags

Uma tag é um rótulo que você atribui a um recurso da AWS

* Consiste em uma chave e um valor opcional

A marcação é como você pode anexar metadados a uma instância do EC2

Benefícios potenciais da marcação: filtragem, automação, alocação de custos e controle de acesso
