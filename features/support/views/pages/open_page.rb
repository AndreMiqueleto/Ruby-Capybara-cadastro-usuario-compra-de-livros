class Open
  include Capybara::DSL

  def open
    visit "https://www.saraiva.com.br"

    click_link ("link-account")   #link para Login screen: Entre ou cadastre-se

    #janela recebe a janela que foi aberta pelo link (login)
    @janela = window_opened_by do
      click_button ("vtexIdUI-saraiva-oauth")
    end

    #muda de foco para a janela e clico pra entrar no form de cadastro - funcionouu
    within_window(@janela) do
      find(".btn.btn--block.btn-large.m-t-15.cadastrar-usuario").click
    end
    #sleep 10
  end
end
