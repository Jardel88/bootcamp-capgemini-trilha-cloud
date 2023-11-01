# Processo sem Automação

## Riscos do Processo Manual

Não é compatível com repetição em escala

* Como você replicará as implantações em várias regiões?

Não há controle de versões

* Como você reverterá o ambiente de produção para uma versão anterior?
  
Falta de trilhas de auditoria

* Como você garantirá a conformidade? como você monitorará as alterações nos detalhes de configuração no nível do recurso?

Gerenciamento de dados inconsistente

* Por exemplo, como você garantirá as configurações em várias instâncias do EC2
  
Infraestrutura como código

Infraestrutura como código, também conhecida como IaC, é uma prática de TI que codifica e gerencia a infraestrutura de TI como software. O objetivo da infraestrutura como código é permitir que os desenvolvedores ou equipes de operações gerenciem, monitorem e provisionem recursos automaticamente, em vez de configurar manualmente dispositivos de hardware e sistemas operacionais distintos.

Em outras palavras:

Infraestrutura como código significa gerenciar sua infraestrutura de TI utilizando arquivos de configuraçao.

Quando nós falamos em infraestrutura como código, não significa que o provisionamento seja apenas para componentes de infra, esse conceito pode se estender para demais componentes, sendo necessário basicamente uma tecnologia que permita ser automatizada pelo uso de APIs, comandos ou linguagen descritiva, de forma que você possa criar esse recurso através de código.

Componentes para se trabalhar com IaC

Repositório de códigos ex:

* GitHub
* GitLab
* BitBucket

Tecnologias Automatizáveis ex:

* AWS
* Docker
* Splunk
* Datalog
* Goocle Cloud

Ferramentas de IaC ex:

* Terraform
* Ansible
* Chef
* CloudFormation

Entrega de Infraestrutura ex:

* Jenkins
* Run Deck
* Travis CI
* CircleCI

## Benefícios da Infraestrutura como código

Reduza a configuração de vários ambientes

* Implementação rápida de ambientes complexos
* Promove a consistência das configurações
* Limpeza simples quando desejado (A exclusão da pilha exclui os recursos criados)
* Fácil de propagar uma alteração em todas as pilhas
  * Modifique o modelo, xecute a pilha de atualização em todas as pilhas

Benefícios

* Capacidade de reutilização
* Repetibilidade
* Manutenção

## Introdução ao CloudFormation

O AWS CloudFormation Oferece uma maneira de simplificada de modelar, criar e gerenciar uma coleção de recursos AWS

* A coleção de recursos é chamada de pilha do AWS CloudFormation
* Sem cobrança extra(Pague apenas pelos recursos criados)

Cria, Atualiza e Exclui pilhas

Permite provisionamento e atualização ordenada e previsível dos recursos

Permite o controle de versão das implantações de recursos da AWS

Funcionamento do ClouFormation

1 - Defina seus recursos em um modelo ou use um modelo pré-criado

2 - Faça o upload do modelo no AWS ClouFormation ou aponte para um modelo armazenado em um bucket do S3

3 - Execute uma ação de criação de pilha. Os recursos são criados em vários serviços em sua conta da AWS como um ambiente em execução

4 - A pilha mantém o controle dos recursos criados. Mais tarde você pode atualizar a pilha, detectar desvios ou excluir a pilha

Modelos do AWS ClouFormation

* Autor em Javascript Object Notation ou (JSON) ou YAML
  * Vantagens do YAML:
    * Menos detalhado(Sem os caracteres {}, "")
    * Suporta comentários incorporados
  * Vantagens do JSON
    * Mais amplamente utilizado por outros sistemas informáticos (Por exemplo, APIs)

Recomendação, trate os modelos como código fonte, armazene-os em um repositório de código

O modelos também podem ser criados no AWS ClouFormation Designer, uma interface de design gráfico no console de gerenciamento da AWS

## Estrutura do Template do Cloud Formation

O exemplo a seguir mostra um modelo de estilhaço formatado em JSON.

~~~
{
  "AWSTemplateFormatVersion" : "version date",

  "Description" : "JSON string",

  "Metadata" : {
    template metadata
  },

  "Parameters" : {
    set of parameters
  },
  
  "Rules" : {
    set of rules
  },

  "Mappings" : {
    set of mappings
  },

  "Conditions" : {
    set of conditions
  },

  "Transform" : {
    set of transforms
  },

  "Resources" : {
    set of resources
  },
  
  "Outputs" : {
    set of outputs
  }
}
~~~

O exemplo a seguir mostra um modelo de estilhaço formatado em YAML.

~~~

---
AWSTemplateFormatVersion: "version date"

Description:
  String

Metadata:
  template metadata

Parameters:
  set of parameters

Rules:
  set of rules

Mappings:
  set of mappings

Conditions:
  set of conditions

Transform:
  set of transforms

Resources:
  set of resources

Outputs:
  set of outputs

~~~

A única seção obrigatória é a seção de recursos(resources)

Parâmetros: Especifique quais valores podem ser definidos no tempo de execução ao criar a pilha

* Exemplo de uso: Configurações específicas da região ou configurações do ambiente de produção versus ambiente de teste
  
Recursos: Defina o que precisa ser criado na conta da AWS

* Exemplo: Crie todos os componentes de uma virtual private cloud(VPC) e crie instâncias do EC2 na VPC
* Pode referenciar parâmetros

Saídas: Especifique valores retornados após a criação da pilha

* Exemplo de uso: Retorna o instance ID ou o endereço IP público de uma instância do EC2

AWS Quick Start

* São implantações padrão ouro
* Baseados nas melhores práticas da AWS para segurança e alta disponibilidade
* Podem ser usadas para criar arquiteturas inteiras com apenas um clique, em menos de uma hora
* Pode ser usado para experimentação e como base para suas próprias arquiteturas

## Introdução ao AWS Systems Manager

O AWS Systems Manager é um serviço da AWS que você pode usar para visualizar e controlar sua infraestrutura.

Usando o console do System Manager, você pode exibir dados operacionais de vários serviços da AWS e automatizar tarefas operacionais nos recursos da AWS.

O AWS Systems Manager ajuda você a manter a segurança e a conformidade verificando seus nós gerenciados e gerando relatórios(Ou tomando medidas corretivas) sobre quaisquer violações de políticas detectadas.

Casos de uso do AWS Systems Manager

* Agrupamento de recursos por qualquer finalidade ou atividade
* Definir de forma centralizada as opções de configuração de nós
* Automatizar e programar uma variedade de tarefas de manutenção
* Se conectar a instância sem necessidade de expor a porta SSH 22
* Executar um inventário automatizado
* Ver recursos na conta que não estão em conformidade
* Aplicar patches de segurança de forma centralizada

O AWS CloudFormation funciona bem para definir recursos da nuvem AWS e o AWS Systems Manager funciona bem para automatizar dentro de sistemas operacionais convidados.

Categorias do AWS Systems Manager

O AWS Systems Manager é composto por recursos que são agrupados em cinco categorias:

* Gerenciamento de operações
* Gerenciamento de aplicações
* Gerenciamento de alterações
* Gerenciamento de nós
* Recursos compartilhados

O AWS Systems Manager simplifica o gerenciamento de recursos e aplicações, diminui o tempo para detectar e resolver problemas operacionais, e ajuda você a operar e gerenciar sua infraestrutura da AWS de modo seguro e em grande escala.

SSM Agent

O AWS Systems Manager Agent (SSM Agent) é um software da Amazon que é executado em uma instância do Amazon Elastic compute Cloud (Amazon EC2), em um servidor on-premisses ou em uma máquina virtual.

O SSM Agent possibilita que o AWS Systems Manager atualize, gerencie e configure esses recursos.

O SSM Agent deve ser instalado em cada instância que você quiser usar com o AWS Systems Manager.
