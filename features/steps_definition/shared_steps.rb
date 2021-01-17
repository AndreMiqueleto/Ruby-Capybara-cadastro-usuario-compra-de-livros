Então("vejo a mensagem de erro: {string}") do |expect_error|
  expect(@error.error_msg).to eql expect_error
end

Então ("uma tabela com os usuários cadastrados deve ser exibida abaixo") do
  expect(@dash_page.on_dash?).to be true
end
