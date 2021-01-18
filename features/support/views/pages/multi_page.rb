class MultiPage
  include Capybara::DSL

  def open
    visit "http://prova.stefanini-jgr.com.br/teste/qa/"
  end

  def create(multi)
    #puts "multipage usuario" + multi
    find("#name").set multi[:nome]
    find("#email").set multi[:email]
    find("#password").set multi[:senha]

    click_button "Cadastrar"
  end
end
