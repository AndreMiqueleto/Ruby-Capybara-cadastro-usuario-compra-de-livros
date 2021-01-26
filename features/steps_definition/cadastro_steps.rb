Dado("que acesso a página de cadastro") do
  @cadastro_page.open
end

Quando("submeto o formulário de cadastro") do
  @cadastro_page.create
end

Então ("devo ver a mensagem de cadastro com sucesso") do
  expect(@cadastro_page.msg_sucesso).to have_content "Usuário Cadastrado com sucesso"
  sleep 15
end
