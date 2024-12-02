require 'net/http'

example = Net::HTTP.get('example.com', '/index.html') #puxando da net e escrevendo dentro do arquivo.

File.open('example.html', 'w') do |line| # 'w' -> vai sobrescrever o que estiver 
  line.puts(example)# escrever linha por linha da net, dentro do arquivo.
end

