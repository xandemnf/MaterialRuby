#Accessors

class Carro
    
    def initialize(nome = "Modelo Padrão")
        @nome = nome
    end

    attr_accessor :nome, :roda, :pneu, :porta, :painel
    
    #DEFINIÇÃO DE COMO O ATTR_ACCESSOR TRABALHA:
    # def attr_accessor(*args)
    #     args.each do |propriedade|
    #         eval("
    #             def #{propriedade}=(value)
    #                 @#{propriedade}=value
    #             end

    #             def #{propriedade}
    #                 @#{propriedade}
    #             end
    #             ")
    #     end
    # end

    
    #COMO SERIA A LINHA 9 UTILIZANDO GETTERS E SETTERS

    # #NOME DO CARRO
    # def nome=(value)
    #     @nome = value
    # end

    # def nome
    #     @nome
    # end

    # #RODA
    # def roda=(value)
    #     @roda = value
    # end

    # def roda
    #     @roda
    # end

    # #PNEU
    # def pneu=(value)
    #     @pneu = value
    # end

    # def pneu
    #     @pneu
    # end

    # #PORTA
    # def porta=(value)
    #     @porta = value
    # end

    # def porta
    #     @porta
    # end

    # #PAINEL
    # def painel=(value)
    #     @painel = value
    # end

    # def painel
    #     @painel
    # end

end

carro = Carro.new("Ale")

puts carro.nome
carro.pneu = "preto"
carro.roda = "Aro 18"
puts carro.pneu
puts carro.roda
carro.painel = "Led"
puts carro.painel