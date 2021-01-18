Dado("que acesso a página de cadastro") do
  @signup_page.open
end

Quando("submeto o seguinte formulário de cadastro:") do |table|
  user = table.hashes.first

  @signup_page.create(user)
end

#Cadastro de multiplos usuarios

Dado("que acesso a página para cadastrar multiplos usuários:") do
  @multi_page.open
end

Quando("submeto os usuários abaixo:") do |table|
  multi = table.hashes
  i = 0
  5.times do
    #@multi_page.create(multi)
    #puts multi[i][:nome]
    @multi_page.recebeNome(multi[i][:nome])

    #puts multi[i][:email]
    @multi_page.recebeEmail(multi[i][:email])

    #puts multi[i][:senha]
    @multi_page.recebeSenha(multi[i][:senha])

    i = i + 1
  end

  sleep 20
end

Então("devo ver esses usuarios na minha tabela") do |table|
end
