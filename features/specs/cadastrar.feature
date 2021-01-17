#language: pt
Funcionalidade: Cadastro
            Eu como usuário do sistema
    Desejo realizar o cadastro de novos usuarios
    Para que seja possivel armazenar e gerenciar os dados

    @cadastro
    Cenario: Cadastrar usuarios

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
            | nome             | email             | senha    |
            | Jose Henrique    | jose@gmail.com    | 12345678 |
        Então uma tabela com os usuários cadastrados deve ser exibida abaixo


    Esquema do Cenario: Tentativa de Cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
            | nome         | email         | senha         |
            | <nome_input> | <email_input> | <senha_input> |
        Então vejo a mensagem de erro: "<mensagem_output>"

        Exemplos:
            | nome_input    | email_input    | senha_input | mensagem_output                            |
            |               | jose@gmail.com | 12345678    | O campo Nome é obrigatório.                |
            | Jose Henrique |                | 12345678    | O campo E-mail é obrigatório.              |
            | Jose Henrique | jose@gmail.com |             | O campo Senha é obrigatório.               |
            | jose          | jose@gmail.com | 12345678    | Por favor, insira um nome completo.        |
            | Jose Henrique | jose.gmail.com | 12345678    | Por favor, insira um e-mail válido.        |
            | Jose Henrique | jose@gmail.com | 1234567     | A senha deve conter ao menos 8 caracteres. |



