#DINAMICOS 
require "byebug"

#LAMBDA
#NÃO ACEITA MAIS PARAMETROS DO QUE OS DEFINIDOS

#EX: 1
l = lambda do |p| #|p| funciona como uma passagem de parametro
    puts p
end

l.call("Alexandre")

puts "\n" 

#EX: 2

l2 = lambda do |p1, p2| 
    puts p1+p2
end

l2.call(4, 5)

puts "\n" 

#PROC
#CAPTURA OS PARAMETROS POR ARGS, POSSO PASSAR VARIOS PARAMETROS
#EX:1 

b = Proc.new do |p,t|    # |p| funciona como uma passagem de parametro
    puts p + " " + t
end

b.call("Alexandre", "Gonçalves")

#EX: 2
b1 = Proc.new do |param|
    param = 0 if param.nil? #SE EU NAO SETAR O PARAMETRO ELE ENTRA NA MULTIPLICAÇÃO COMO NIL, GERANDO ERR
    param * 4
end

puts b1.call(4)

#EX: 3
b2 = Proc.new do |param, param2, param3|
    puts param
    puts param2
    puts param3
end

puts b2.call("O primeiro tem valor, os outros são NIL")

#Blocos
#Varios argumentos
def metodo(*bloco)
    #debugger
    bloco
end

metodo(1,2,3,4,5)

#O &  utiliza um metodo para passar um bloco para uma variavel
def metodo_para_definir_bloco(&bloco)
    bloco
end

h = metodo_para_definir_bloco do |param|
    param * 5
end

puts h.call(100)

# metodo do
#     puts "Metodo em blocos"
# end.call

#EVAL (TRANSFORMA )
 eval(" puts '123 \n' ")

 atr = "nome"

 eval("
    def #{atr}(value)
        @#{atr} = value
    end
 ")

 eval("
    def mostrar
        @#{atr}
    end
 ")
#debugger
 nome('Alexandre')
 puts mostrar

#DEFININDO METODOS  DINAMICOS

class Teste
    def inicio
        def fim
        end
    end
end

t = Teste.new
#debugger
#t.fim #VAI DAR PAU, O METODO INICIO CRIA O FIM
t.inicio
t.fim

#MUUUUUITO LEGAL ISSO (CRIAR METODOS EM RUNTIME)

class Teste
    def self.definir(valor)
        define_method(valor) do |param1, param2|
            puts "#{param1} - #{param2}"
            #MESMA COISA DISSO:
            # def metodo(param1, param2)
            #     puts "#{param1} - #{param2}"
            # end
         end

         def self.atributo(valor)
            define_method(valor) do |param1|
                puts "#{param1} "
            end
        end

    end
end

Teste.definir("novo_metodo")
#debugger
Teste.new.novo_metodo("Alexandre", "Gonçalves")
Teste.definir("novo_metodo2")
Teste.new.novo_metodo2("Isso é ", "muito legal cara")

['set_nome', 'set_endereco', 'set_telefone'].each do | atr|
    Teste.atributo(atr)
end

teste = Teste.new
teste.set_nome ("Alexandre")
teste.set_endereco("SMPW Quadra 17 COnjunto 10 Lote 08")
teste.set_telefone ("55 61 9 9802-0868")

#CRIANDO UM ATTR_ACCESSOR NA MÃO

module AtributosDinamicos
    def atributos(*atrs)
        atrs.each do |atr|
            define_method("#{atr}=") do |value|
                instance_variable_set "@#{atr}", value
            end

            define_method("#{atr}") do
                instance_variable_get "@#{atr}"
            end
        end
    end
end

class Teste
    extend AtributosDinamicos
    atributos :nome, :telefone
    #attr_accessor :nome, :telefone
end

debugger
t = Teste.new
t.nome = "Alex"
t.telefone = "999999999"

puts "#{t.nome} --- #{t.telefone}"


