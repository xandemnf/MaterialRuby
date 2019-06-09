### MODULOS

require "byebug"


str = "Alexandre String"

#str.methods

#debugger

def str.nome
    "Alexandre"
end

#str.methods
puts str.nome #

a = str.clone #CLONA O ESTADO E O COMPORTAMENTO DA INSTANCIA
puts a.nome

b = str.dup #CLONA O ESTADO
puts b

def b.mostrar
    "Agora C tem um COMPOTAMENTO (MÉTODO)"
end

puts b.mostrar

cc = a #A VARIAVEL D VAI HERDAR TUDO DE A

puts cc.nome

####################################

alx = "Teste"

def alx.nome       #DEFININDO UM METODO PARA A INSTANCIA ALX
    "Alexandre"
end

def alx.sobre_nome
    "Gonçalves"
end

def alx.ultimo_nome
    "Teixeira"
end

puts "\n\n"

puts alx.nome
puts alx.sobre_nome
puts alx.ultimo_nome

puts "\n\n"

#debugger

class << alx
    def nome2          
        "Alexandre - Método de Instâcia incluido com sucesso"
    end
    def sobre_nome2
        "Gonçalves"
    end
    def ultimo_nome2
        "Teixeira"
    end
end

puts alx.nome2
puts alx.sobre_nome2
puts alx.ultimo_nome2

puts "\n\n"

class Alexandre
    def self.ola
        "Hi Pessoas"
    end
    
    class << self #Incluir Métodos de Classe
        def diga_oi
            "Oi Pessoas"
        end

        def diga_ola
            "Olá Pessoas"
        end
    end

    def fale
        "Oi" #ESSE METODO SERÁ HERDADO NA INSTACIA CRIADA A PARTIR DESSA CLASSE
    end

end

puts  Alexandre.ola
puts Alexandre.diga_oi
puts Alexandre.diga_ola

pessoa = Alexandre.new
puts pessoa.methods

puts "\n"

################# INCLUINDO ATTR_ACESSOR NA CLASSE

# class Classe_attr
#     def self.nome=(value)
#         @nome = value
#     end

#     def self.nome
#         @nome
#     end

#     def self.endereco=(value)
#         @endereco = value
#     end

#     def self.endereco
#         @endereco
#     end
# end

class Aluno
    class << self
        attr_accessor :nome, :endereco
    end
end

Aluno.nome = "Alexandre Gonçalves Teixeira"
Aluno.endereco = "SMPW Quadra 17 Conjunto 10 Lote 08"



class Aluno
    class << self
        attr_accessor :telefone
    end
end

Aluno.telefone = "99802-0868"

puts Aluno.telefone

################################ MODULOS



module Utilidades
    class Cpf
        def validador
        end
    end

    class Cnpj
        def validador
        end
    end
end

puts Utilidades::Cpf

module Validador
    def validar_cpf
        puts "Cpf Validado"
    end

    def validar_cnpj
        puts "CNPJ Validado"
    end
end

class Cliente
    include Validador
end

class Fornecedor
    include Validador
end

puts Cliente.new.validar_cpf
puts Fornecedor.new.validar_cnpj

aa = "Teste de extensao"

a.extend Validador

puts "\n"
puts a.validar_cpf
puts a.validar_cnpj

#INCLUIR MODULO NUM TIPO PADRAO
module Teste
    def tirar_espaco
        self.gsub(" ", "-")
    end
end

module Teste2
    def metodo_de_classe
        "Método de Classe"
    end
end

String.include Teste
puts ss = "sss ssss sss ss sss s ssssss ssss   sss"
puts ss.tirar_espaco

String.include Teste #INCLUI METODO NA INSTANCIA
String.extend Teste2 #INCLUI METODO NA CLASSE

#INCLUIR METODOS NA INSTANCIA/CLASSE

module InstanciaEClasse
    def instancia
        "Método de instancia"
    end

    module Classe
        def de_classe
            "Método de Classe"
        end
    end
end

class TesteFinal
    include InstanciaEClasse
    extend InstanciaEClasse::Classe
end

puts TesteFinal.new.instancia
puts TesteFinal.de_classe

#INCLUDED

module IncludedTeste
    def instancia
        "Método de instancia"
    end

    def instancia2
        "Método de instancia 2"
    end

    module Classe
        def de_classe
            "Método de Classe do Included"
        end
    end

    def self.included(cls)
        cls.extend Classe
    end
end

class ClasseIncluded
    include IncludedTeste
end

debugger

puts ClasseIncluded.new.instancia
puts ClasseIncluded.new.instancia2
puts ClasseIncluded.de_classe