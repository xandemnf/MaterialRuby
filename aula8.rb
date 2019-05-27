#class Pessoa
#   def apresente_se
#     puts "Olá, eu nasci de uma classe pessoa"
#   end
#
#   def cpf_id
#     puts self.object_id
#   end
#end

# puts x.apresente_se
# puts x.cpf_id

# puts y.apresente_se
# puts y.cpf_id


class Pessoa
  def initialize(str)
    @nome = str
  end

  attr_accessor :nome

end

  #TODO O CODIGO ABAIXO PODE SER SUBSTITUIDO POR attr_accessor :nome
#   def imprimir_nome
#     @nome
#   end

#   def guardar_nome(novo_nome)
#     @nome = novo_nome
#   end


#x =  Pessoa.new("Alexandre")


