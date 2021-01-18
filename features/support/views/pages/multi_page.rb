class MultiPage
  include Capybara::DSL

  def open
    visit "http://prova.stefanini-jgr.com.br/teste/qa/"
  end

  def recebeNome(nome)
    #puts "multipage usuario" + multi
    find("#name").set nome
  end

  def recebeEmail(email)
    find("#email").set email
  end

  def recebeSenha(senha)
    find("#password").set senha

    click_button "Cadastrar"
  end
end
