namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando DB....") do #Chamando o metodo com msg de inicio
        %x(rails db:drop) # Bloco de codigo. 
      end #As chaves '{}' ṕodem subistituir o do, end quando tiver apenas uma linha de codigo.
      show_spinner("Criando DB...") { %x(rails db:create) } #mesma coisa de cima, porem, utilizado quando se tem apenas uma linha de codigo.
      show_spinner("Migrando DB...") { %x(rails db:migrate) }
      %x(rails dev:add_mining_types)
      %x(rails dev:add_coins)
    else
      puts "Vocẽ não está em ambiente de desenvolvimento!"
    end
  end

  desc "Cadastra de Moedas"
  task add_coins: :environment do
    show_spinner("Cadastrando moedas...") do
      coins = [
      { 
        description: "Bitcoin",
        acronym: "BTC",
        url_image: "https://cryptologos.cc/logos/bitcoin-btc-logo.png",
        mining_type: MiningType.find_by(acronym: 'PoW')
      },
      { 
        description: "Ethereum",
        acronym: "ETH",
        url_image: "https://cryptologos.cc/logos/ethereum-eth-logo.png",
        mining_type: MiningType.all.sample
      },
      { 
        description: "Dash",
        acronym: "DASH",
        url_image: "https://s2.coinmarketcap.com/static/img/coins/200x200/131.png",
        mining_type: MiningType.all.sample
      },
      { 
        description: "Iota",
        acronym: "IOT",
        url_image: "https://cryptologos.cc/logos/iota-iota-logo.png",
        mining_type: MiningType.all.sample
      },
      { 
        description: "ZCash",
        acronym: "ZEC",
        url_image: "https://icons.iconarchive.com/icons/cjdowner/cryptocurrency-flat/512/Zcash-ZEC-icon.png",
        mining_type: MiningType.all.sample
      }]

      coins.each do |coin|
        Coin.find_or_create_by!(coin)
      end
    end
  end

  desc "Cadastro os tipos de mineração"
  task add_mining_types: :environment do
    show_spinner("Cadastrando tipos de mineração...") do
      mining_types = [
        {description: "Proof of Work", acronym: "PoW"},
        {description: "Proof of Stake", acronym: "PoS"},
        {description: "Proof of Capacity", acronym: "PoC"}
      ]

      mining_types.each do |mining_type|
        MiningType.find_or_create_by!(mining_type)
      end
    end
  end

  private

  def show_spinner(msg_start, msg_end = "Concluido!") #Metodo para nao repetir o codigo demais.
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}") #chamando a gems e passando uma msg de inicio
    spinner.auto_spin #Vai deixar a gems rodando
    yield #Executando o bloco de codigo.
    spinner.success("(#{msg_end})") # Exibir msg final. Msg final ja esta pre-definida no parametro do metodo.
  end

end
