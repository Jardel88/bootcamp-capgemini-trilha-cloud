## Projeto

Provisionamento de infraestrutura para uma aplicação em multicamadas.

Aplicação construída em camadas dividida em módulos conforme as camadas existentes.

Modulos:

* Network: Base para conexão entre serviços.
* Frontend: Instâncias em auto-scaling onde irá rodar a aplicação Web.
* Backend: API Rest rodando com API Gateway e Lambdas.
* Database: Base de dados para armazenar os dados da aplicação.

