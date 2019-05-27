h = { "a" => 123, "b" => 899 }
puts h.class
puts h.inspect
puts h["a"]
puts h["b"]

h.merge! ({"c" => "Alexandre"})

puts h