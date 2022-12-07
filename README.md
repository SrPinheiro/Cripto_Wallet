## Rails Genegerate

#### Help
    rails g
### Controller
    rails g controller welcome index

### Scaffold

    rails generate scaffold (nome da tabela) (atributos e seus tipos)

## Rails Destroy

### help
    rails d

#### Destoi uma determinada criação

    rails d (GENERATE) (NOME)
    exemplo: rails d controller teste

## migration
#### pega todas as alterações feitas e aplica no banco de dados

    rails db:create  #Cria o banco de dados

    rails db:migration #Adiciona as tabelas ao banco de dados

## rails environments
#### inicia o servidor de produção 
    RAILS_ENV=production rails s

    rails s -e production

## ERB

##### ERB é um sistema de templates ruby responsavel por realizar
##### interpolações, Exemplo:
    require 'erb'

    x = 42
    
    template = ERB.new <<-EOF
    the value of x: <%= x %>
    EOF
    
    puts template.result(binding)

#### interpolações

    <% código Ruby -- uma linha de codigo ruby %>
    <%= Expressão Ruby -- so resultado da expressão sera colocado no lugar %>
    <%# comentário -- ignorado -- útil para testar %>
    % uma linha de código Ruby -- tratado como <% line %> (opcional -- veja ERB.new)
    %% substituído por % se a primeira coisa em uma linha e processamento % for usado
    <%% ou %%> -- substitua por <% ou %> respectivamente


## link_to
link_to é um helper do rails que cria um redirecionamento para um 
determinado link, exemplos:

    <%= link_to("Cadastro de moedas(HELPER)", "/coins") %>

    <%= link_to("Cadastro de moedas(HELPER)", coins_path) %>

## image_tag
image_tog é responsavel por colocar uma imagem, exemplo:
<a href="https://edgeapi.rubyonrails.org/classes/ActionView/Helpers/AssetTagHelper.html#method-i-image_tag"> Documentacao </a>


    em html: &lt;img src="<%= coin.url_image%>" width=25px, height=25px/>
    em ruby: <%= image_tag coin.url_image, width: 25, height: 25 %>


## Helper
Helper são funcões prontas que ajudam no desenvolvimento da aplicação, exemplo:

    module WelcomeHelper
        def dataAtual
            Date.today.strftime"%d/%m/%Y"
        end
    end


## Verbos HTTP

#### GET
    O método GET solicita a representação de um recurso específico. Requisições utilizando o método GET devem retornar apenas dados.


#### POST
    O método POST é utilizado para submeter uma entidade a um recurso específico, frequentemente causando uma mudança no estado do recurso ou efeitos colaterais no servidor.

#### PUT
    O método PUT substitui todas as atuais representações do recurso de destino pela carga de dados da requisição.

#### DELETE
    O método DELETE remove um recurso específico.
    

## Rails console
O rails console é parecido com o IRB, porem ao invez de executar em um ambiente privado, ele executa com toda
a aplicação de fundo

    rails c

### sandBox
O sandBox possibilita que você utilize o rails console sem que isso afete o sistema de fato
tudo que for alterado sera descartado ao finalizar o console

    rails c --sandbox

### Helpers
Para acessar os helper utilize o comando:

    helper.(helper)
    helper.dataAtual()

### Trabalhando com models

#### pry-rails
a pry-rails é uma gem que tem como objetivo ajudar na hora de trabalhar com models no rails c
    gem 'pry-rails'

#### models
os models ficam disponiveis no rails c, podendo chamalos pelo nome da classe, exemplo:

    Coin.all #Retorna todos os objetos de Coin
    Coin.first #Retorna o primeiro objeto de Coin
    Coin.last #Retorna o ultimo objeto de Coin

    #isso faz um each para coin existente
    Coin.all.each do |coins|
        //acao
    end

### Ambiente
para descobrir em qual ambiente você esta, utilize
    
    Rails.env
    Rails.env.development?
    Rails.env.production?
    

    




