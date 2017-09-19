# Sistema acadêmico - prova de conceito

Este repositório contém a implementação de alguns casos de uso principais
de um sistema acadêmico. Esta prova de conceito é parte do trabalho de pós-graduação
do curso da PUC MG.

Para testar o sistema, a forma recomendada é simplesmente acessar a seguinte
URL: [https://academico-anna-alvarenga.herokuapp.com/](https://academico-anna-alvarenga.herokuapp.com/).
Essa URL tem a versão mais recente da aplicação hospedada no serviço
[Heroku](https://www.heroku.com/home) (que é um PaaS, Platform as a Service).

Para executar a aplicação localmente, veja instruções abaixo. Em caso de dúvidas,
enviar um email para anna.carolina.a92@gmail.com

## Tecnologias utilizadas

Esta prova de conceito foi desenvolvida na linguagem de programação Ruby (versão 2.4.1),
utilizando o framework web Ruby on Rails (versão 5.1.4) e o banco de dados relacional
Postgres (versão 9.6).

## Executando a aplicação localmente

Caso você queira executar a aplicação localmente, é altamente recomendável que o faça
em uma distribuição Linux ou no macOS.

Para executar a aplicação localmente, será necessário:

- Ruby 2.4.1
- Uma versão recente do Postgres

Para instalar o Ruby, é sugerido que se use o [rbenv](https://github.com/rbenv/rbenv)

Após instalar o Ruby, clone este repositório:

```
git clone https://github.com/annaalvarenga/academico.git
```

Depois, vá até o diretório onde o repositório foi clonado e instale as suas dependências:

```
bundle install
```

Após instalar as dependências, execute o seguinte comando para criar o banco
de dados de desenvolvimento e o popular com alguns dados de exemplo:

**Importante:** certifique-se de que a sua instância do Postgres está rodando!
Além disso, talvez seja necessário editar os dados de acesso da aplicação
ao Postgres, dependendo das configurações locais da sua instalação. Isso
pode ser feito no arquivo config/database.yml (editar as configurações
relativas ao ambiente "development").

```
bundle exec rails db:setup
```

Por fim, levante o servidor de aplicação com o seguinte comando:

```
bundle exec rails s
```

A aplicação estará disponível em http://localhost:3000

Caso você queira rodar a bateria de testes automatizados:

```
RAILS_ENV=test bundle exec rails db:create (só é necessário rodar uma única vez para criação do banco de dados do ambiente de testes)
```

```
bundle exec rspec
```
