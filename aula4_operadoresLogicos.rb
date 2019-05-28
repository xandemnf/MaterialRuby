##### OPERADORES LÓGICOS #####

#   ==    Igualdade
#   eql?  Igualdade
#   >     Maior
#   <     Menor
#   <=>   Retona 0 , 1 ou -1 (Verifica se o numero da esquerda é menor que o da direita)
#   !=    Diferente
#   !     Not
#   &&    And
#   ||    Or
#   ~=    Verifica uma expressão regular dentro de uma string. Ex: 'alexandre' ~= /(a)|(e)/
#   !~    Verifica se nao tem a expressão regular dentro de uma string. 

a = 1
b = 2
c = 3
d = 4


if 1 == 1 || 2==2
    puts "Teste OR ok"
end

unless b==1 && a==3
    puts "Teste AND ok"
end

unless b==1 and a==3
    puts "Teste AND 2 ok"
end

while(a<=c)
    puts "Hello World"
    a+=1
end

puts 24.eql?(2*12) #Return True

puts 12 <=> 12 #Return 0
puts 12 <=> 11 #Return 1
puts 10 <=> 12 #Return -1

