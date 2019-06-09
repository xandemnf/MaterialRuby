require_relative 'aula11_carro.rb'
require_relative 'aula11_fiesta.rb'

carro = Fiesta.new

carro.nome = "Fiesta"

carro.teste = 123

puts carro.nome
puts carro.teste
puts carro.mostrar("Alx")
