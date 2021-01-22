Quando("submeto o seguinte formulário de cadastro:") do |table|
  user = table.hashes.first
  @signup_page.cenario(user)
end

Então("vejo a mensagem de erro: {string}") do |expect_error|
  #@texto = find(:xpath, ".//small[contains(text(),'Informe o nome')]")
  #puts @texto

  #expect(@texto.text).to eql expect_error
  expect(@signup_page.error).to eql expect_error

  #expect(@error.error_msg).to have_text expect_alert
end
