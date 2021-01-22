class SignupPage
  include Capybara::DSL

  # para ID usa o "#" e para o class usa o "."
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

  #cria o cenario de cadastro com sucesso (uso da lib faker )
  def create

    #variaveis não geradas pelo faker:
    telefone = 19995983094
    nascimento = "09071977"
    @pais = "Brasil"
    cep = 13880000
    bairro = "recanto das aguas"
    endereco = "Rua Joaquina Flores"
    numero = 123
    complemento = "Apto"
    contato = 1929067659
    referencia = "Ao lado do bar do João"

    within_window @janela do
      find_by_id("InputNome1").set Faker::Name.male_first_name
      find_by_id("InputSobrenome1").set Faker::Name.last_name
      find_by_id("InputEmail1").set Faker::Internet.free_email
      @senha = Faker::Alphanumeric.alphanumeric(number: 8)
      find_by_id("InputSenha1").set @senha
      find_by_id("InputConfirmeSenha1").set @senha
      find_by_id("InputCpf1").set Faker::CPF.numeric
      find_by_id("InputCpf1").send_keys(:page_down)
      choose("RadioMasculino1", allow_label_click: true)
      find_by_id("InputDataNascimento1").set nascimento
      find_by_id("InputCelular1").set telefone
      select_pais(@pais) if @pais.length > 0
      find_by_id("InputCep1").set cep
      sleep(3)
      find_by_id("InputCep1").send_keys(:tab)

      #sleep necessario devido a renderização dos campos bairro e endereço
      sleep(2)

      find_by_id("InputBairro1").set bairro
      find_by_id("InputEndereco1").set endereco
      find_by_id("InputNumero1").set numero
      find_by_id("InputNumero1").send_keys(:page_down)
      find_by_id("InputComplemento1").set complemento
      find_by_id("InputTelefone1").set contato
      find_by_id("InputPontoReferencia1").set referencia
      sleep 5
      #janela recebe uma janela que foi aberta pelo link
      find_by_id("FinalizarCadastro1").click
      #click_button "Finalizar Cadastro"

    end
  end

  #cria os cenarios com base em massa de testes (validação dos campos obrigatórios)
  def cenario(user)
    #checkpoint com timeout explicito
    #page.has_css?("#equipoForm")
    within_window @janela do
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
      #recebe uma janela que foi aberta atraves do link
      #@janela = window_opened_by do

      find_by_id("FinalizarCadastro1").click
    end
  end

  def error
    #checkpoint com timeout explicito
    #page.has_css?("#equipoForm")
    within_window @janela do
      return find(:xpath, ".//small[contains(text(),'')]").text
    end
  end

  def msg_sucesso
    within_window @janela do

      #within("#modalMensagem") do

      #cadastro__usuario is_wishlist
      puts "chegueii na tela do sucesso"
      return find(".modal-header").text
      #end
    end
  end

  def select_pais(country)
    find_by_id("SelectPais1").find("option", text: country).select_option
  end
end
