class Cenario
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

  def cadastrar(user)
    #checkpoint com timeout explicito
    #page.has_css?("#equipoForm")
    within_window(@janela) do
      find_by_id("InputNome1").set user[:nome]
      find_by_id("InputSobrenome1").set user[:sobrenome]
      find_by_id("InputEmail1").set user[:email]
      find_by_id("InputSenha1").set user[:senha]
      find_by_id("InputConfirmeSenha1").set user[:conf_senha]
      find_by_id("InputCpf1").set user[:cpf]
      find_by_id("InputCpf1").send_keys(:page_down)

      if (user[:sexo] == "Masculino")
        choose("RadioMasculino1", allow_label_click: true)
      end

      if (user[:sexo] == "Feminino")
        choose("RadioFeminino1", allow_label_click: true)
      end

      find_by_id("InputDataNascimento1").set user[:nascimento]
      find_by_id("InputCelular1").set user[:celular]
      #select_pais(@pais) if @pais.length > 0
      find_by_id("InputCep1").set user[:cep]
      sleep(3)
      find_by_id("InputCep1").send_keys(:tab)

      #sleep necessario devido a renderização dos campos bairro e endereço
      sleep(2)

      find_by_id("InputBairro1").set user[:bairro]
      find_by_id("InputEndereco1").set user[:endereco]
      find_by_id("InputNumero1").set user[:numero]
      find_by_id("InputNumero1").send_keys(:page_down)
      find_by_id("InputTelefone1").set user[:telefone]
      find_by_id("FinalizarCadastro1").click
    end
  end

  def error
    #checkpoint com timeout explicito
    #page.has_css?("#equipoForm")
    within_window(@janela) do
      return find(:xpath, ".//small[contains(text(),'')]").text
    end
  end
end
