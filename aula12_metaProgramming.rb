####METAPRAGRAMMING

#OBJETO = ESTADO + COMPORTAMENTO

require "byebug"

#debugger

a = "Alexandre"

def a.mostrar
    return "Nova String"
end

#puts a.methods #O MEDODO MOSTRAR DEVERA CONSTAR

puts a.class

####################
puts "\n"
####################


puts "+++++++++++#{self}+++++++++++"

class Carro
   
    def initialize(nome="Modelo Padrão")
        @nome = nome
    end

    attr_accessor :nome, :porta, :painel, :roda, :marca
    attr_reader :pneu

    puts "+++++++++++#{self}+++++++++++"

    def mostrar(marca="Marca Default")
        puts "Marca: #{marca} - Modelo: #{self.nome}"
        puts "\n"
        puts "+++++++++++#{self}+++++++++++" #INSTANCIA DE CARRO
        
    end

    def self.metodo_de_classe
        "Metodo de Classe (Interno com uso de Self"
    end
    
end

puts "+++++++++++#{self}+++++++++++"

def Carro.metodo_de_classe2
    puts "Metodo de classe externo"
end


gol = Carro.new
palio = Carro.new

gol.nome = "Gol" 
gol.marca = "Volks W." 

def gol.mostrar #ALTERANDO MEDOTO DA INSTANCIA GOL EM RUNTIME
    puts ("Marca: #{marca} - Modelo: #{nome}")
end

gol.mostrar
palio.mostrar
 
puts "\n"

puts Carro.metodo_de_classe
puts Carro.metodo_de_classe2