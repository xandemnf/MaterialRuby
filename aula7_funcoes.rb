#FUNÇÕES

require 'byebug'

#fUNÇÃO SIMPLES
#debugger
def teste
    puts 1+5
    return 1+5    
end

a = teste
puts a.class

#FUNÇÃO COM PARAMETRO
def teste_2 (count=1) #posso definir um valor default caso eu nao passe algum parametro na chanada da função
    return 0 if count == 1 
    return 20
end

a = teste_2(20)
puts a

#FUNÇÃO COM PARAMETROS
def teste3(*parametros)
    v = "aa" + 1
    return "Paramentro Validado" if parametros.include? (6)
    return "Paramentro NÃO Validado"
rescue Exception => e
    puts "Error"
    puts e.message
end

b = teste3(1,2,3,4,5,7,8,9)

puts b

#######################################################
puts "\n-------------------------------------\n"

def cadastro_aluno
    aluno = {}
    puts "Digite o nome do Aluno:"
        aluno[:nome] = gets.chomp
    puts "Digite o numero do #{aluno[:nome]}:"
        aluno[:tel] = gets.delete('\n')
    aluno
end

loop do
    puts "Digite 0 para sair ou 1 para continuar"
    valor = gets.to_i
    break if valor == 0
    
    alunos = []
    
    3.times do
        alunos << cadastro_aluno
    end
    
    alunos.each do |aluno|
        puts "====================================="
        puts "Aluno: #{aluno[:nome]}, telefone: #{aluno[:tel]}"
        puts "====================================="
    end
end
#######################################################