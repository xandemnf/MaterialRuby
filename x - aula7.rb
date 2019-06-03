#constante (Letras maiusculas)
PI = 3,1415

str = "Pão,Leite,Café,Bolacha,Rosquinha"
x = str.split(",")
puts x.inspect
puts "\n\n"

str1 = "Alexandre Gonçalves Teixeira"
x1 = str1.split
puts x1.inspect
puts "\n\n"

str2 = %w(Alexandre Gonçalves Teixeira)
puts str2.inspect
puts "\n\n"

puts "Isso é um Join: #{str2.join(" ")}"
puts "\n\n"

#eval (interpreta em lingugem ruby)
puts "Digite o que quer fazer: "
str3 = gets.chomp

puts str3.inspect
puts str3.class

puts "\n\n"
y = eval(str3)
puts y

puts "\n\n"
puts "Digite o que quer fazer: "
str4 = gets.chomp
#puts "hello"
puts eval(str4)

#instance_of

def mostrar(a)
   if a.instance_of?(String)
    puts a
   end

   if a.instance_of?(Array)
    a.each do |i|
        puts i
    end
    end

   if a.instance_of?(Integer)
    puts a
   end
end

mostrar("Ola Alexandre")
mostrar([1,2,3,4,5])
mostrar(123)

#range
(1..10).each do |i|
    puts i
end
puts "\n\n"
(1...10).each do |i|
    puts i
end


