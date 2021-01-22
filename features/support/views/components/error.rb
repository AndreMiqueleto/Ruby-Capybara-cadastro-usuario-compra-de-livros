class Error
  include Capybara::DSL

  def error_msg
    within_window @janela do
      find_by_id("FinalizarCadastro1").click
      sleep 5
      return find(:xpath, ".//small[contains(text(),'Informe o nome')]")

      #muda de foco para o form de cadastro
      #within_window @janela do
      # find(".btn.btn--block.btn-large.m-t-15.cadastrar-usuario").click

      #sleep(10)
    end
  end
end
