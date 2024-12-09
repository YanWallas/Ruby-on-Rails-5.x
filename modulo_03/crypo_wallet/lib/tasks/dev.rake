namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando DB....") do #Chamando o metodo com msg de inicio
        %x(rails db:drop) # Bloco de codigo. 
      end #As chaves '{}' ṕodem subistituir o do, end quando tiver apenas uma linha de codigo.
      show_spinner("Criando DB...") { %x(rails db:create) } #mesma coisa de cima, porem, utilizado quando se tem apenas uma linha de codigo.
      show_spinner("Migrando DB...") { %x(rails db:migrate) }
      show_spinner("Buscando dados DB...") { %x(rails db:seed) }
    else
      puts "Vocẽ não está em ambiente de desenvolvimento!"
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
