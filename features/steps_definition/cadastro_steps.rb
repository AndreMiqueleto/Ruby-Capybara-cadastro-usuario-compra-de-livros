Dado("que acesso a página de cadastro") do
  @signup_page.open
end

Quando("submeto o seguinte formulário de cadastro:") do |table|
  user = table.hashes.first

  #MongoDB.new.remove_user(user[:email])

  @signup_page.create(user)
end

#remover usuarios

Dado("que acesso a página de cadastro e tenho os seguintes usuarios:") do |table|
  @signup_page.open
  user = table.hashes.first

  #visit current_path
end

Quando("solicito a exclusão de um usuario especifico") do
  #@dash_page.request_removal(@equipo[:name])
  #sleep 1 # think time
end

Quando("confirmo a exclusão") do
  #@dash_page.confirm_removal
end

Então("não devo ver esse item na minha tabela") do
  #expect(
  #  @dash_page.has_no_equipo?(@equipo[:name])
  #).to be true
end
