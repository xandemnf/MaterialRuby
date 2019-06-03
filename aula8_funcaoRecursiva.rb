#FUNÇÕES RECURSIVAS

def funcao_recursiva(count=1)
    return 1 if count>10
    puts "Rucursividade número: #{count}"
    funcao_recursiva(count+=1)
end

funcao_recursiva

#BRINCANDO COM RUBY 
# @ha = "ha"
# def capturar_usuario
#     puts "Loop Infinito " << @ha
#     @ha << "ha"
# capturar_usuario
# end     


#ISSO SERIA UMA CAPTURA DE UM SERVIÇO JSON ATRAVEZ DE UMA API
def capturar_usuario(pagina=1)
    uri = URI("http://localhost:3000/usuarios.json?pagina=#{pagina}")
    request = Net::HTTP.get_response(uri)
    if request.code == "200" #SE O REQUEST VOLTAR 200 COMEÇA A CAPTURA DOS DADOS
        dados = JSON.parse(request.body)
        dados.each do |dado|
            puts "==================================="
            puts dado["id"]
            puts dado["nome"]
            puts dado["login"]
            puts dado["senha"]
            puts dado["email"]
            puts "==================================="
        end
        capturar_usuario(pagina + 1) if dados.size > 0
    end
end
capturar_usuario