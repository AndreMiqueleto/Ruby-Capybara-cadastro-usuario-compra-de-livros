class MultiPage
  include Capybara::DSL

  def open
    visit "http://prova.stefanini-jgr.com.br/teste/qa/"
  end

  def cadastrar(nome, email, senha)
    find("#name").set nome
    find("#email").set email
    find("#password").set senha

    click_button "Cadastrar"
  end
end
