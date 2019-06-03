x = "Rails"

puts "Ruby on #{x}"

nomes = %w(Alexandre Guilherme Gustavo)

nomes.each do |nome|
    puts "Olá #{nome}"
end

puts "\n\n"

puts "Ruby " + "On " + "Rails " + "#{nomes[0]}"
puts "Ruby " << "On " << "Rails " << "#{nomes[0]}"

subst = "Ruby " << "On " << "Rails " << "#{nomes[0]}"

#substituição global para imprimir
puts subst.gsub("Alexandre", "SejaFoda!")
puts subst
#substituição global para imprimir
puts subst.gsub!("Alexandre", "SejaFoda!")
puts subst

puts "\n\n"

#Concatenação gerando novo objeto
txt = "Alexandre Gonçalves"
puts txt.object_id
txt = txt + " Teixeira"
puts txt.object_id
puts txt

puts "\n\n"

#Interpolação (Concatenação correta) de variaveis
txt2 = "Alexandre Gonçalves"
puts txt.object_id
txt2 = txt2 << " Teixeira"
puts txt.object_id
puts txt2

#Symbol (são imutáveis)
h = {:a => 123, :b => 456 } 
puts h
h1 = {a: 123, b: 456 }
puts h1




