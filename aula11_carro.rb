class Carro
   
    def initialize(nome="Modelo Padrão")
        @nome = nome
    end

    attr_accessor :nome, :porta, :painel, :roda
    attr_reader :pneu

    def mostrar(marca="Marca Default")
        puts "Marca: #{marca} - Modelo: #{self.nome}"
    end

end