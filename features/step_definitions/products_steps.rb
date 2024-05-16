require 'httparty'
require 'json'

Dado('que eu faço uma requisição GET para {string}') do |url|
    @response = HTTParty.get(url)
end

Então('a resposta deve conter a chave {string}') do |key|
    expect(@response).to include(key)
end

Então('eu imprimo um valor aleatório da chave {string}') do |key|
    value = JSON.parse(@response.body)[key].sample
    puts "Random establishment type of #{key}: #{value}"
end