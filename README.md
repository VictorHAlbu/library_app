# Store App API
Essa projeto é uma **API** responsável por gerenciar um catalogo de lojas (**Store**)

## Estrutura
Essa **API** deve ser constituída por:

 - Um Model **User** com os atributos **name, email e password**
 - Um Model **Store** com os atributos **name, user_id**
 -  Onde:
	 - **Store** pertence à **User**

Obs: Essa api usa Autenticação com JWT

# Tecnologias

Para desenvolver o projeto foi usado as tecnologias: Ruby on Rails e Postgresql

### Pré-requisitos

Para rodar o projeto na sua máquina, deve ter instalado o ruby ruby '2.7.1' e o 'rails', '~> 5.1.3' e Postgresql

```
gem 'rails', '~>5.1.3'
Postgresql
```

Na sua máquina execute os comandos:
```
bundle install
```

Obs:  
 

Em seguida crie sua base de dados com comandos:

```
rails db:create
rails db:migrate
```
Para subir o projeto local execute:
```
rails s
```

### Endpoints para testes

#### Sign up

```
curl -XPOST -H "Content-Type: application/json" -d '{ "user": { "email": "myemail@email.com", "password": "mypassword" } }' http://localhost:3000/users
```

#### Login
```
curl -XPOST -i -H "Content-Type: application/json" -d '{ "user": { "email": "myemail@email.com", "password": "mypassword" } }' http://localhost:3000/users/sign_in
```
obs: use a chave gerada para criar e acessar os dados

#### Create Store
```
curl -XPOST -H "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIxOCIsInNjcCI6InVzZXIiLCJhdWQiOm51bGwsImlhdCI6MTY2NzU0Mjk1MSwiZXhwIjoxNjY4ODM4OTUxLCJqdGkiOiI5NDY3ZTZhMS0wNDU5LTQ0N2ItYmMzNi1kMWI0YmIwMzQwZGMifQ.GBVAhfVA-Me15JXVEIt8ZVVU46maPez63w1UpzAtjzI" -H "Content-Type: application/json" -d '{ "sotre": { "name": "Lorem" } }' http://localhost:3000/api/stores
```

