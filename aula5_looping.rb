# while     Enquanto
# until     Até
# loop      
# times
# for
# each
# map
# select

require "byebug"

#WHILE
index = 0
while index < 3
    puts "Teste de While #{index + 1}"
    index += 1
end

puts "\n"

#UNTIL
botton=0
top=5
puts "Until #{botton += 1} = #{top}" until botton >= top

puts "\n"

#LOOP
i=0
loop do
    break if i >= 3
    i+=1
    next if i == 2
    puts "Teste num #{i}"
end

puts "\n"

#TIMES
4.times do |i|
    puts i
end

puts "\n"

#FOR
for b in 0..7 # .. vai fazer ate o 7 (... faz até < 7)
    next if b % 2 == 0
    puts b
end

puts "\n"

#EACH
(1...4).each{ |i| puts i }
puts "\n"
[1,2,3,4].each{ puts i }

puts "\n"

#MAP
[1,2,3].map{ |v| puts "oi #{v}"}

puts "\n"

#SELECT
[1,2,3,4,5,6,7].select{ |v| puts v >= 4 }
puts "\n"
a = [1,2,3,4,5,6,7].select{ |v| v >= 4 }
puts a
