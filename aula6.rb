#metodos/funçoes

def meu_menu
    puts "--------------------"
    puts "|       MENU       |"
    puts "--------------------"
end

meu_menu
meu_menu
meu_menu

puts "\n\n"

def meu_menu2(value)
    puts "#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}"
    puts "|       MENU       |"
    puts "#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}#{value}"
end

meu_menu2('*')
meu_menu2('-')
meu_menu2("c")
meu_menu2("w")

def soma(a, b)
   resultado = a + b
   puts "A soma foi: #{resultado}"
end

soma(4,5)
