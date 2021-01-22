Dado("que acesso a página de cadastro") do
  @signup_page.open
end

Quando("submeto o formulário de cadastro") do
  @signup_page.create
  #expect(@signup_page.create).to eql "Usuário Cadastrado com Sucesso"
  #expect(@signup_page.create).to have_content "Usuário Cadastrado com Sucesso"
end

Então ("devo ver a mensagem de cadastro com sucesso") do
  #page.assert_text("Usuário Cadastrado com Sucesso")
  #expect(page.assert_text("Usuário Cadastrado com Sucesso")).to eq true
  #text = page.driver.browser.switch_to.alert.text
  #expect(text).to eq "Usuário Cadastrado com Sucesso"
  #expect(@signup_page.msg_sucesso).to eql "Usuário Cadastrado com Sucesso"

  #page.has_field?('elemento')
  #expect(page.has_field?('elemento')).to eq true
  #expect(@signup_page.msg_sucesso).to have_content "Usuário Cadastrado com Sucesso"

  #expect(page).to have_no_content('Senha/email inválido')
end
