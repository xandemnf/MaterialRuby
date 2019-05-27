#Herança

class Pessoa
    attr_accessor :nome
    attr_accessor :endereco
end

class PessoaFisica < Pessoa
    attr_accessor :cpf
    attr_accessor :data_nascimento
end

class PessoaJuridica < Pessoa
    attr_accessor :cnpj
    attr_accessor :nome_fantasia
end

pf = PessoaFisica.new
pj = PessoaJuridica.new

pf.nome = "Alexandre"
pf.endereco = "SMPW Quadra 17 Conjunto 10 Lote 08"

pj.nome = "ALX"
pj.endereco = "Conheciencia"

puts pf.nome
puts pf.endereco