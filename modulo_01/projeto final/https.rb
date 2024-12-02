require 'net/http'

https = Net::HTTP.new('reqres.in', 443)
# Para fazer chamadas https
https.use_ssl = true #Usar a certificação ssl (mais seguro)

response = https.get("/api/users")

#status code 
puts  response.code

#status message
puts response.message 

#body (json)
puts response.body
