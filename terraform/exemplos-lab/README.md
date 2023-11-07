## Introdução ao IaC e seus benefícios

IaC(Infraestrutura como código) consiste em escrever o que deseja implementar em código. No lugar de processos manuais, de gerenciamento e provisionamento da infraestrutura, usamos trechos de código.

Benefícios

* Código declarativo
* Redução de risco
* Rastreamento
* Colaboração
* Escalabilidade e velocidade

Terraform

O Terraform é uma ferramenta de Infraestrutura como Código, criada pela HashiCorp que permite gerenciar e provisionar recursosna cloud ou local usando arquivo onde podemos versionar, reutilizar e compartilhar.

HashiCorp Configuration Language (HCL)

O HashiCorp Configuration Language ou HCL é um liguagem criada pela Hashicorp, com seu principal objeto de declarar recursos que representam objetivos de infraestrutura.
Uma configuração do terraform é um ou mais arquivos escritos em HCL que informa ao Terraform como gerenciar uma determinada infraestrutura.

Blocos

Tipos:

* Resource: Descreve um ou mais objetos de infraestrutura a ser provisionado.
* Data: Permite que usemos informações de fora do Terraform.
* Provider: O Terraform conta com plugins chamados de "providers" usados para interagir com provedores de nuvem, provedores SaaS e outras APIs.
  * Existem providers:
    * Oficiais
    * Criados por parceiros
    * Criados pela comunidade
    * Criados para uso próprio
* Variable: Usado para declarar variáveis que irão receber valores do usuário.
* Output: Fornece informações da infraestrutura provisionada pelo Terraform.
* Locals: Atribui valor a uma expressão.
* Module: Conjunto de multiplos resources.
* Terraform: Configurações do Terraform.

Argumento:

Um argumento atribui valor a um nome.

image_id = "abc123"

A informação antes do sinal de igual (=) é o nome do argumento e a informação após o sinal é o valor do argumento.

O contexto onde o argumento está sendo utilizado é que determinado que tipo de valor são válidos (cada recurso tem um esquema que defini os tipos de argumentos), mas na maioria é aceito expressões que permite que o valor seja específico ou gerado por uma outra configuração.

Exemplo de expressões:

Bloco:

Um bloco é um container que possui um conjunto de informações.

~~~

resource "aws_instance"  "example"  { 
  ami  =  "abc123" 

  network_interface  { 
    # ... 
  } 
}

~~~

No exemplo acima temos três informações no início do bloco:

resource: É o tipo de bloco (nesse caso resource). Veremos blocos do tipo variables, datasource entre outros.

aws_instance: É um rotulo que indica o recurso que estamos trabalhando, nesse caso é com instância EC2. Dependendo do tipo de bloco essa informação não é necessária.

example: Outro rótulo que indica um nome para diferenciar esse bloco de outros com a mesma finalidade. Dependendo do tipo de bloco essa informação não é necessária.

Em seguida temos uma chave ( { ) que indica o início dos detalhes desse bloco, onde podemos usar argumentos e sub-blocos.

Para finalizar adicionamos mais uma chave ( } )

É muito importante entender a construção dos blocos por que muitas vezes iremos utilizar algumas informações de um bloco dentro de outro bloco.

Comentário:

É uma boa pratica de desenvolvimento adicionar comentários no código para que a atualização e manutenção seja executada de forma simple por outras pessoas.

Para adicionar um comentário podemos usar:

* (#) Inicia um comentário de uma linha
* (//) Também utilizado para comentar uma linha
* (/* e */) são usados para indicar o início e termino de um comentário com várias linhas

Autenticação na AWS

Usando o provider AWS podemos interagir com diversos recursos da Amazon Web Services(AWS)

Métodos de autenticação

* Acesso direto usando credenciais do usuário.
* Acesso por assume rule.
* Acesso usando IAM Instance Profile(EC2)

Exemplo de acesso com credenciais do usuário:

Obs: Não recomendado para ambiente de prodção, apenas desenvolvimento e teste.

~~~

provider "aws" {
    region = "us-west-2"
    access_key = "my-access-key"
    secret_key = "my-secret-key"
}

~~~

Exemplo de acesso com assume rule:

~~~

rovider "aws" {
    assume_role {
        role_arn = "role_arn"
        session_name = "session_name"
    }
}

~~~

Inicializando o diretório de trabalho no Terraform

O comando terraform init é utilizado para iniciar o diretório. A inicialização executa várias etapas e algumas verificações no arquivo do diretório preparando o mesmo para uso.

Configurações do comando INIT

* -upgrade: Atualiza os modulos, providers e plugins.
* -reconfigure: Reconfigura o backend.
* -migrate-state: Reconfigura o backend e migra as informações para o state atual.

Comandos importantes

* terraform validate: Valida se algo foi adicionado de forma incorreta.
* terraform fmt: Valida se o arquivo está alinhado corretamente.
* terraform plan: Mostra os detalhes do que será criado.
* terraform apply: Para construir um recurso.
* terraform destroy: Deleta um recurso.
* Se adicionar as propriedades --auto-approve após o comando, o mesmo é executado sem solicitar alguma ação do usuário.

Variáveis

O HCL possui alguns blocos para requisitar ou publicar valores.

Variável é o nome dado para definir um ou mais valores que são manipulados durante a execução do terraform.

Podendo ser usada para:

* Aplicar uma personalização sem a necessidade de editar o código.
* Evitar a repetição de valores no código, com isso temos um código mais dinâmico e reutilizável.

Definindo a variável:

Para declarar uma variável no terraform utilizamos um bloco do tipo variable juntamente com um rótulo.

~~~

variable "image_id" {
  type = string
}

~~~

O rótulo é utilizado para dar nome à variável e deve ser único dentro do contexto que foi aplicado.

Argumento:

No bloco variable podemos usar os seguinte argumentos

* default: Adiciona um valor padrão e defini a variável como opcional
* type: Especifica o tipo de valor aceito
  * string: Aceita qualquer valor
  * number: Aceita somente números
  * boolean: Aceito somente true ou false
  * list(): Aceita uma lista
  * map(): Aceita um mapa
  * object(): Aceita atributos e valores
* description: Adiciona informações sobre a variável para que a mesma fique melhor documentada
* validation: Um bloco que podemos definir regras de validação
* sensitive: Evita com que dados sensíveis sejam exibidos no log
* nullable: Especifica se a variável pode contar o valor de null

Usando a variável:

Temos algumas formas de usar a variável.

1º Forma de uso

~~~

resource "some_resource" "a" {
  name    = var.nome_da_variavel_a
  address = var.nome_da_variavel_a
}

~~~

No exemplo acima utilizar a palavra var, um ponto como separador e no final o nome da variável.

Damos preferencia para esse uso, pois deixa o código mais limpo

2º Forma de uso

~~~
resource "some_resource" "a" {
  name    = " Algum texto antes ${var.nome_da_variavel_a} ou depois da variável"
}

~~~

Nesse outro exemplo utilizamos $ e chaves ( { e } ) junto da declaração da variável.

Utilizamos dessa forma quando precisamos que a variável seja usada junto com alguma string (texto, caracteres expeciais ou números).

3º Forma de uso

~~~

resource "some_resource" "a" {
  name    = format("Hello, %s!", var.nome_da_variavel_a
}

~~~

Esse é outra forma de utilizar uma variável com uma string, so que estamos usando uma função.

Com a função format temos uma estrutura propria onde %s é substituido pelo valor da variável.

Depois de declaradas as variaveis podem ser definidas da seguintes formas:

* No Workspace
* Linha de comando, usando o -var
* Arquivo com a extenção .tfvars
* Como variável de ambiente

Output

O HCL possui alguns blocos para requisitar ou publicar valores.

O output pode nos disponibilizar informações sobre a infraestrutura provisionada via linha de comando ou expor informações para outras configurações do Terraform.

O output é o contrário da variável, ele é utilizado para publicar informações seja para algum outro bloco ou para o usuário que está usando o código dependendo do contexto que foi aplicado.

Definindo o output:

Para declarar um output no terraform utilizamos um bloco do tipo output juntamente com um rótulo.

~~~

output "instance_ip_addr" {
  value = aws_instance.server.private_ip
}

~~~

O rótulo é utilizado para dar nome ao output e deve ser único dentro do contexto que foi aplicado.

O value contém uma expresão que coleta o valor do IP privado do recurso server após a sua criação e entregar esse valor para o output em questão.

Argumento:

No bloco variable podemos usar os seguinte argumentos:

* value: Expressão que dará valor ao output.
* description: Adiciona informações para que o mesmo fique melhor documentado.
* precondition: Podemos aplicar uma validação antes que o output seja analisado pelo terraform.
* sensitive: Evita com que dados sensíveis sejam exibidos no log
* depends_on: Informa que o output depende de outro(s) recurso(s), exemplo da criação de uma instância.

Comando:

Quando estamos utilizando o output no contexto do diretório de trabalho podemos utilizar a opção de linha de comando para que seja exibido os valores de output.

~~~
A sintaxe é terraform output [options] [name]
~~~

Ao utilizar somente o comando terraform output será exibido o valor de todos os outputs configurados.

Se adicionarmos o nome de um output (terraform output instance_ip_addr) será exibido somente o valor do output informado.

Se adicionarmos também o parâmetro -raw (terraform output instance_ip_addr -raw) será exibido somente o valor do output informado e sem as aspas, indicado para quando queremos utilizar o valor do output em outro comando de nosso CI/CD.

Também temos os seguintes parâmetros:

* -json: A saída será exibida em json
* -no-color: A saída não será colorida
* -state-path: Poodemos indicar um arquivo de state. O arquivo padrão é o terraf

State

O Terraform armazena o estado da infraestrutura e configurações de gerenciamento. O state é o local onde o terraform armazena o estado e configurações da infraestrutura gerenciada, com o state o Terraform pode mapear os recursos do mundo real para a sua configuração, acompanhar metadados e melhorar a performance de grandes ambientes.
O state é, por padrão, armazenado em um arquivo chamado terraform.tfstate, mas pode ser armazenado remotamente, onde é indicado para o trabalho em equipe.
O arquivo do state é construido em json, mas não é recomendado a edição direta.
Para modificações devemos utilizar o comando terraform state.

Remote state:

O remote state é o mais indicado para quando estamos trabalhando em equipe, pois temos o state disponível em um local centralizado para todos os colaboradores.
Quando estamos trabalhando com a AWS usamos o S3 como local de armazenamento do arquivo de State também chamado de backend.

Exemplo bloco state:

~~~

terraform {
  backend "S3" {
    bucket = "mybucket"
    key = "path/to/my/key"
    region = "us-east-1"
  }
}

~~~

Locking:

Em alguns backends podemos utilizar a função de bloquear o state (locking). Com isso caso um segundo colaborador tentar usar o state o mesmo estará bloqueado para uso.
Quando estamos trabalhando com a AWS usamos o DynamoDB para armazena a configuração de bloqueio do state.

Comando:

Podemos utilizar alguns comandos para gerenciar as informações do state.

* terraform state list: Utilizado para visualizar a infraestrutura contida no state. Se for adicionado um recurso no final do comando podemos fazer um filtro.
* terraform state show: No final desse comando precisamos adicionar um recurso e com isso veremos os seus atributos.
* terraform state -backup: Utilizamos para criar um backup do state.
* terraform state mv: Movimenta um recurso no mesmo state ou para outro.
* terraform state rm: Remove um recurso do state
* terraform graph: Gera uma imagem com grafico visual da execução do terraform.
* terraform output: Visualizamos a informação dos output.
* terraform show: Mostra o conteúdo do state de forma compreensível por humanos.
* terraform import: Importa recursos existentes para o state.

COUNT

Por padrão o resource block cria somente um recurso. Com o count podemos criar o mesmo bloco de configuração para criar mais de um recurso.

Exemplo:

~~~

resource "aws_instance" "foo" {
  count = 4 #cria 4 ec2
  ami = "amia1b2c3d4"
  instance_type = "t2.micro"
  tags = {
    name = "server-${count.index}"
  }
}

~~~

For_Each

O for_each tem a mesma função do count, porém podemos utilizar valores de uma lista.

Exemplo:

~~~

resource "aws_instance" "foo" {
  for_each = toset(["myec2", "ec2-instance"]) # função que cria uma lista
  ami = "amia1b2c3d4"
  instance_type = "t2.micro"
  tags = {
    name = each.key
  }
}

~~~

Locals

É a forma que temos para atribuir um nome a uma expressão(se refere ou calcula valores dentro de uma configuração) e usá-la várias vezes sem ter que repetí-la.

Exemplo:

~~~

locals {
  instance_ids = concat(aws_instance.blue.*.id,aws_instance.green.*.id)
  common_tags = {
    service = "backend"
    owner = "backend"
  }
}

~~~

Dynamic Blocks

Algumas vezes precisamos repetir sub-blocos dentro do bloco de resources, e isso deixa nosso bloco de código enorme.

O dynamic blocks nos ajuda a ter vários sub-blocos configurados de forma dinâmica e com menos código.

Exemplo:

~~~

resource "aws_security_group" "foo" {
  dynamic "ingress" {
    for_each = var.ports
    content {
      from_port = ingress.value
      to_port = ingress.value
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}

~~~

Módulos

Muitas vezes precisaremos reutilizar o código que desenvolvemos, principalmente quando precisamos provisionar muiltiplos ambientes.

Os módulos são containers onde podemos adicionar configurações para criação de vários recursos juntos. Eles possuem uma coleção de arquivos .tf que são mantidos juntos para que os recursos sejam provisionados ao mesmo tempo.

Imagina que você precisa criar um EC2, vai precisar de Network Interface, Disco, Security Group e a VM.

Para provisionamento dessa EC2 será necessário algumas boas linhas de código para criar esse 4 recursos.

Quando necessário criar várias EC2 teríamos que criar cópias desse código.

Utilizando módulos colocamos o código para criação da EC2 e suas dependencias em um diretório, em outro diretório teremos os arquivos com as configurações de conexão com a AWS então será o diretório de trabalho.

No diretório de trabalho adicionamos bloco chamado modules onde precisa ser adicionado o caminho do diretório do nosso módulo e com isso podemos ter vários diretórios de trabalho apontando para o mesmo diretório do módulo que cria o EC2.

Módulo raiz:

Toda configuração do terraform possui uma módulo, mesmo que não estejamos utilizando um bloco module. Esse módulo é chamado de módulo raiz.

Módulo filho:

Quando um módulo chama outro módulo damos o nome, do segundo módulo, de módulo filho

Hospedagem:

Possui vários locais para hospedar o código, dentre eles, o mais utilizado é o local e o git.

A hospedagem local é a estratégia mais simples de configurar, porem dificulta a utilização por vários projetos.

A hospedagem no git é a melhor estratégia quando queremos que o nosso módulo seja utilizado por vários projetos e/ou compartilhados com outros colaboradores.

Para quando não queremos criar os nossos módulos podemos utilizar os módulos do terraform registry, onde possui vários módulos criados pela HarshiCorp, fabricantes ou pela comunidade.

Exemplo:

~~~

module "servers" {
  source = "./app-cluster"

  servers = 5
}

~~~

Sources

* Local
* Terraform Registry
* Git
* HTTP URLs
* S3 Buckets
* GCS Buckets

Workspaces

Com o Workspaces podemos ter um state ou mais utilizando o mesmo diretório de trabalho.

Cada Workspace possui suas próprias configurações como se fosse direórios deferentes, simplificando o desenvolvimento e manutenção do código.

Validação de variáveis

Validação de entrada

O parâmetro validation dentro do bloco de variável é usado para analisar se o valor fornecido para a variável atende aos requisitos.

Exemplo:

~~~

variable "image_id" {
  validation {
    condition = ...
    error_message = ...
  }
}

~~~

Precondition e Postcondition

O precondition e o postcondition podem ser utilizados para criar regras de validação nos blocos resources, datasource e outputs.

Precondition

O precondition é executado antes da avaliação do objeto em que foi configurado.

Exemplo:

~~~

resource "aws_instace" "example" {
  lifecycle {
    precondition {
      condition = ...
      error_message = ...
    }
  }
}

~~~

Postcondition

O postcondition é executado depois da avaliação do objeto em que foi configurado.

~~~

resource "aws_instace" "example" {
  lifecycle {

    precondition... # Opcional

    postcondition {
      condition = ...
      error_message = ...
    }
  }
}

~~~

Processo de validação

Input validation -> precondition -> plan -> postcondition
