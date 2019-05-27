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