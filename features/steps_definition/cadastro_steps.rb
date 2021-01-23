Dado("que acesso a página de cadastro") do
  @cadastro_page.open
end

Quando("submeto o formulário de cadastro") do
  @cadastro_page.create
end

Então ("devo ver a mensagem de cadastro com sucesso") do
  #expect(@signup_page.has_field?(".modal-content")).to eq true

  #expect(@signup_page).to have_selector(".modal-content")
  expect(@cadastro_page.msg_sucesso).to have_content "Usuário Cadastrado com sucesso"
end

#"Solicitação de Cadastro\nUsuário Cadastrado com sucesso\nVocê será redirecionado para o site em"
