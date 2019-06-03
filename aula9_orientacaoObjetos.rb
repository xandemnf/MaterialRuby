#Orientação a Objetos

class Carro
    
    #CONSTRUTOR
    def initialize(nome="Padrão")
        @nome = nome
    end
    
    #SETTER
    # def nome=(value)
    # @nome = value
    # end
    
    # #GETTER
    # def nome
    #     @nome
    # end

    def mostrar(marca="Default")
        puts "Marca #{marca} - Modelo: #{@nome}"
    end
end

#carro = Carro.new
#carro.nome = "Gol"
#puts carro.nome

carro = Carro.new #("Palio")

carro.mostrar #("Fiat")