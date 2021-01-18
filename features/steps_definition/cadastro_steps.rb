Dado("que acesso a página de cadastro") do
  @signup_page.open
end

Quando("submeto o seguinte formulário de cadastro:") do |table|
  user = table.hashes.first

  #MongoDB.new.remove_user(user[:email])

  @signup_page.create(user)

  sleep 10
end

#Cadastro de multiplos usuarios

Dado("que acesso a página de cadastro e tenho os seguintes usuarios:") do |table|

  multi = table.hashes

end

Quando("eu clico no botão cadastrar") do

 
end

Então("devo ver esses usuarios na minha tabela") do |table|
end
