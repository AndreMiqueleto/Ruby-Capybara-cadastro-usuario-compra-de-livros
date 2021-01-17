Dado("que acesso a página de cadastro") do
  @signup_page.open
end

Quando("submeto o seguinte formulário de cadastro:") do |table|
  user = table.hashes.first

  #MongoDB.new.remove_user(user[:email])

  @signup_page.create(user)
end

#Cadastro de multiplos usuarios

Dado("que acesso a página de cadastro e tenho os seguintes usuarios:") do |table|
  #@form_attributes = {}
  @multi_page.open

  #table.map_headers!("Nome" => :nome, "Email" => :email, /Senha( number)?/i => :senha)
  multi = table.hashes
  @multi_page.create(multi)

  #table.hashes.each do |valor|
  #  @user = valor["Jose Henrique"]
  #  @user = valor["jose@gmail.com"]
  #  @user = valor["12345678"]
  #end

  #table.hashes.each do |valor2|
  #  @user = valor2["Joao Batista"]
  # @user = valor2["Joao@gmail.com"]
  # @user = valor2["12345678"]
  #end
end

Quando("eu clico no botão cadastrar") do
  #@signup_page.create(user)

end

Então("devo ver esses usuarios na minha tabela") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  #pending # Write code here that turns the phrase above into concrete actions
end
