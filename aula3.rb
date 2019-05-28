#STRINGS

###CONCATENAÇÃO
" #{} " , " + "

a = " Alexandre"
b = "Meu nome é"
puts "#{b} #{a}"
puts "Meu nome é " + a
b << a

####SUBSTRING
a = "Aula de hoje"
a[1,2]  #RESULTADO: 'Au'

puts a[0,3]
puts a.scan(/Aula/)
puts a.split(" ")

###REPLACE 
"ALEXANDRE".GSUB('D','A') #RESULTADO: 'ALEXANARE' 

b = "nossa aula de hoje"
b = b.gsub('aula', 'aula 2')
# b.gsub!('aula', 'aula 2') //Alteração por beng
puts b

###CAPITALIZE
'ALEXANDRE'.CAPITALIZE #RESULTADO: 'Alexandre'

###CENTER
'D'.CENTER(20) #RESULTADO: '        D        ''

###UPPERCASE
'alexandre'.UPPERCASE #RESULTADO: 'ALEXANDRE'

###DOWNCASE 
'ALEXANDRE'.UPPERCASE #RESULTADO: 'alexandre'

###DELETE
a = "Aula de Hoje"
puts a.delete("de") #RESULTADO: 'Aula Hoje'

###STRIP
a = "    Alexandre      "
puts a.strip #RESULTADO:  "Alexandre"
puts a.lstrip #RESULTADO: "Alexandre      " ; l = left
puts a.rstrip #RESULTADO: a = "    Alexandre" ; r = rigth

###INCLUDE
a = "Teste hardcore de include"
puts a.include?("hardcore") #RESULTADO: true

###INDEX
a = "Teste hardcore de index"
puts a.index("de") #RESULTADO: 14

###REVERSE
a = "Alexandre Gonçalves Teixeira"
puts a.reverse







x = ARGV
puts x

puts "\n ******** \n"

v = [11,25,33,42]
puts v.class
puts v.inspect
puts v.object_id
puts v

puts "\n ******** \n"

puts v[2]

puts "\n ******** \n"
a = Array.new
a.push(2)
a.push(3)
a.push(4)
puts a.inspect
a.push(8)
a.unshift(0)
puts a.inspect

puts "\n*****\n"
a.pop #remove o ultimo elemento
a.shift #remove o primeiro elemento
puts a.inspect

puts "\n ******** \n"

w = %w(Alexandre Gonçalves Teixeira)
puts w