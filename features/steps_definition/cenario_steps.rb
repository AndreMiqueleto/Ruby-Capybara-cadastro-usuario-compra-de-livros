Quando("submeto o seguinte formulário de cadastro:") do |table|
  user = table.hashes.first
  @cenario_page.cenario(user)
end

Então("vejo a mensagem de erro: {string}") do |expect_error|
  expect(@cenario_page.error).to eql expect_error
end
