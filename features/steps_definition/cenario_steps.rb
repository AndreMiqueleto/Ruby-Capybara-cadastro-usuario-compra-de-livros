Dado("que acesso a página de cadastro para validar mensagens de erro") do
  @cenario_page.open
end

Quando("submeto o seguinte formulário de cadastro:") do |table|
  user = table.hashes.first
  @cenario_page.cadastrar(user)
end

Então("vejo a mensagem de erro: {string}") do |expect_error|
  expect(@cenario_page.error).to eql expect_error
  sleep 12
end
