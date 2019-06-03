#HASH

a = {nome:'alexandre', tel:'99802-0868'}

puts a.class
puts a
puts a[:nome]

puts "\n"

b = {
    nome: "Ivany",
    "tel": 99616-8865
}

b[1] = 45
puts b.class
puts b[1]
puts b
b[:ttt] = "teste"
puts b

#######################################
loop do
    puts "Digite 0 para sair ou 1 para continuar"
    valor = gets.to_i

    break if valor == 0

    alunos = []
    3.times do
        aluno = {}
        puts "Digite o nome do Aluno:"
            aluno[:nome] = gets.chomp
        puts "Digite o numero do #{aluno[:nome]}:"
            aluno[:tel] = gets.delete('\n')

        alunos << aluno
    end

    alunos.each do |aluno|
        puts "====================================="
        puts "Aluno: #{aluno[:nome]}, telefone: #{aluno[:tel]}"
        puts "====================================="
    end
end