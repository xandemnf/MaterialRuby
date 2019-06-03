##CONDICIONAIS
# IF
# ELSIF
# ELSE
# THEN
# UNLESS
# CASE
# WHEN
# TERNARIO

a = 4
b = 3

if a < b
    puts "a é menor"
elsif b < a
    puts "b é menor"
end

#OUTRA MANEIRA DE FAZER O IF 
# puts "OI" if a == 1
# if a == 1 ; puts "ola" ; end

unless a < b
    puts "b é menor"
else
    puts "a é menor"
end

case a
when 4
    puts "4 é maior"
when 3
    puts "3 é maior"
end

c = 1==1 ? "Oi" : "Olá"
puts c

(a == 4) ? (puts "é igual a quatro") : (puts "é diferente de 4")

a=1
while a <= 10
    puts a
    a+=1
end

puts "\n**********\n"

until a==0
    puts a
    a -= 1
end

puts "\n**********\n"

for i in 0..5
    puts i
end

puts "\n**********\n"

[1,2,3,4].each do |j|
    puts j
end
    
