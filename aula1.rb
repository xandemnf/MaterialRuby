require 'byebug'

#debugger

h = {"hash?" => "yep, it\'s a hash!", "the answer to everything" => 42, :linux => "fun for coders."}
puts "Stringy string McString!".class
puts 1.class
puts 1.class.superclass
puts 1.class.superclass.superclass
puts 4.3.class
puts 4.3.class.superclass
puts nil.class
puts h.class
puts :symbol.class
puts [].class
puts (1..8).class

a = 1 #VARIAVEL SIMPLES
puts a

@a = 2 #VARIAVEL DE INSTANCIA
puts @a

@@a = 3 #VARIAVEL DE CLASSE
puts @@a

$a = 4 #VARIAVEL GLOBAL
puts $a

A = 5 #CONSTANTE
puts A


puts "Olá! \nDigite seu nome...\n"
nome = gets.chomp
puts "\n\n"

puts nome
puts nome.inspect
puts "\n\n"

puts "Olá! \nDigite sua idade...\n"
idade = gets.to_i
puts "\n\n"
puts idade
puts idade.inspect

puts "\n\n"
