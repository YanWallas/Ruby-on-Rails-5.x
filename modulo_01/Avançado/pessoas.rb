#Crie um módulo chamado Person com as classes Juridic e Physical. 

#Ao executar a instrução
#Person::Juridic.new('M. C. Investimentos', '4241.123/0001').add

#E com a instrução 
#Person::Physical.new('José Almeida', '425.123.123-123').add

module Person
  class Juridic
    def initialize(name, cnpj)
      @name = name
      @cnpj = cnpj
    end
  
    def add
      puts 'Pessoa Jurídica Adicionada'
      puts "nome: #{@name}"
      puts "cnpj: #{@cnpj}"
    end
  end
  
  class Physical
    def initialize(name, cpf)
      @name = name
      @cpf = cpf
    end
  
    def add
      puts 'Pessoa Física Adicionada'
      puts "nome: #{@name}"
      puts "cpf: #{@cpf}"
    end
  end
end
  
Person::Juridic.new('M. C. Investimentos', '4241.123/0001').add
puts '-------------------'
Person::Physical.new('José Almeida', '425.123.123-123').add