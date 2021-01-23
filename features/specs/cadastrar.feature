#language: pt
Funcionalidade: Cadastro de Pessoas Fisicas
            Eu como pessoa fisica
    Desejo realizar o cadastro na loja
    Para que seja possivel comprar produtos

    @cadastro
    Cenario: Cadastrar usuario
        Dado que acesso a página de cadastro
        Quando submeto o formulário de cadastro
        Então devo ver a mensagem de cadastro com sucesso


    Esquema do Cenario: Tentativa de Cadastro Nome

        Dado que acesso a página de cadastro para validar mensagens de erro
        Quando submeto o seguinte formulário de cadastro:
            | nome         | sobrenome         | email         | senha         | conf_senha         | cpf         | sexo         | nascimento         | celular         | cep         | bairro         | endereco         | numero         | telefone         |
            | <nome_input> | <sobrenome_input> | <email_input> | <senha_input> | <conf_senha_input> | <cpf_input> | <sexo_input> | <nascimento_input> | <celular_input> | <cep_input> | <bairro_input> | <endereco_input> | <numero_input> | <telefone_input> |
        Então vejo a mensagem de erro: "<error_msg>"

        Exemplos:
            | nome_input      | sobrenome_input | email_input                                                        | senha_input | conf_senha_input | cpf_input   | sexo_input | nascimento_input | celular_input | cep_input | bairro_input      | endereco_input                | numero_input | telefone_input | error_msg                                     |
            |                 | Filipe Melo     | marioviniciusfilipemelo_@fpsgeodata.com.br                         | RbGcfLQfP5  | RbGcfLQfP5       | 10089065816 | Masculino  | 03051993         | 19981953520   | 13871115  | Jardim Bela Vista | Rua Padre Irineu              | 437          | 1938002465     | Informe o nome                                |
            | Cláudio Marcelo |                 | claudiomarcelocampos_@uol.com.bt                                   | r9mqTjaxDu  | r9mqTjaxDu       | 91493974866 | Masculino  | 05091993         | 11999771782   | 09015999  | Centro            | Praça Quarto Centenário 6     | 450          | 1126905744     | Informe o sobrenome                           |
            | Luiz Francisco  | Aparício        |                                                                    | FE5Kn7bk12  | FE5Kn7bk12       | 05029847839 | Masculino  | 07091993         | 19986883933   | 13503510  | Jardim Centenário | Rua 1 JC                      | 955          | 1937875441     | Informe um e-mail válido                      |
            | Jorge Manoel    | Martins         | jjorgemanoelmartins-lubeka.com.br                                  | mZWjArH9Uh  | mZWjArH9Uh       | 88696359887 | Masculino  | 03051996         | 19995888756   | 13503546  | Jardim Paulista   | Avenida 13                    | 830          | 1939003987     | Informe um e-mail válido                      |
            | Lucca Oliver    | Almada          | luccaoliveralmada-95@supercleanlav.com.br                          | qIe8JhUQ9t  |                  | 20031432891 | Masculino  | 16111989         | 19981536536   | 13880970  | Centro            | Rua Major Correa              | 171          | 1925305401     | Confirme a senha                              |
            | Brenda Laís     | da Silva        | brendalaisdasilva_@toyota.com.br                                   | GGFgCJoXu8  | c0ngIby8tr       | 49013635814 | Feminino   | 25092000         | 19983798540   | 13277640  | Jardim Lorena     | Rua Antônio Geraldo Capovilla | 459          | 1939634464     | Confirme a senha                              |
            | Pedro Eduardo   | Pereira         | pedroeduardopereira__pedroeduardopereira@creativeinteriores.com.br | c0ngIby8tr  | c0ngIby8tr       | 490136      | Masculino  | 05121989         | 19999209973   | 13880970  | Centro            | Rua Major Correa              | 44           | 1929819756     | Inform um CPF válido                          |
            | Jorge Manoel    | Martins         | jjorgemanoelmartins@lubeka.com.br                                  | mZWjArH9Uh  | mZWjArH9Uh       | 00000000000 | Masculino  | 03051996         | 19995888756   | 13503546  | Jardim Paulista   | Avenida 13                    | 830          | 1939003987     | Inform um CPF válido                          |
            | Brenda Laís     | da Silva        | brendalaisdasilva_@toyota.com.br                                   | GGFgCJoXu8  | GGFgCJoXu8       | 49013635814 |            | 25092000         | 19983798540   | 13277640  | Jardim Lorena     | Rua Antônio Geraldo Capovilla | 459          | 1939634464     | Escolha uma opção                             |
            | Cláudio Marcelo | Campos          | claudiomarcelocampos_@uol.com.bt                                   | r9mqTjaxDu  | r9mqTjaxDu       | 91493974866 | Masculino  |                  | 11999771782   | 09015999  | Centro            | Praça Quarto Centenário 6     | 450          | 1126905744     | Informe uma data válida                       |
            | Cláudio Marcelo | Campos          | claudiomarcelocampos_@uol.com.bt                                   | r9mqTjaxDu  | r9mqTjaxDu       | 91493974866 | Masculino  | 03051996         |               | 09015999  | Centro            | Praça Quarto Centenário 6     | 450          | 1126905744     | Informe um número de telefone válido          |
            | Jorge Manoel    | Martins         | jjorgemanoelmartins@lubeka.com.br                                  | mZWjArH9Uh  | mZWjArH9Uh       | 88696359887 | Masculino  | 03051996         | 19995888756   | 09015999  | Jardim Paulista   | Avenida 13                    |              | 1939003987     | Informe o Número                              |
            | Jorge Manoel    | Martins         | jjorgemanoelmartins@lubeka.com.br                                  | mZWjArH9Uh  | mZWjArH9Uh       | 88696359887 | Masculino  | 03051996         | 19995888756   | 09015999  | Jardim Paulista   | Avenida 13                    | 12345678901  | 1939003987     | Por favor, insira não mais que 10 caracteres. |
            | Lucca Oliver    | Almada          | luccaoliveralmada-95@supercleanlav.com.br                          | qIe8JhUQ9t  | qIe8JhUQ9t       | 20031432891 | Masculino  | 16111989         | 19981536536   | 13880970  | Centro            | Rua Major Correa              | 171          |                | Informe um Telefone válido                    |
