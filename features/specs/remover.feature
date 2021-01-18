#language: pt

Funcionalidade: Remover usuários cadastrados
            Eu como usuario cadastrado
    Desejo visualizar os usuários cadastrados
    Para que eu possa exluir um determinado usuário


    @temp
    Cenario: Cadastro de multiplos usuarios
        Dado que acesso a página para cadastrar multiplos usuários:
        Quando submeto os usuários abaixo:
            | nome             | email             | senha    |
            | Jose Henrique    | jose@gmail.com    | 12345678 |
            | Joao Batista     | Joao@gmail.com    | 12345678 |
            | Gustavo Pereti   | gustavo@gmail.com | 12345678 |
            | Manuela Joaquina | manu@gmail.com    | 12345678 |
            | Maria da Silva   | maria@gmail.com   | 12345678 |
        Então devo ver esses usuarios na minha tabela
            | Jose Henrique    | jose@gmail.com    | 12345678 |
            | Joao Batista     | Joao@gmail.com    | 12345678 |
            | Gustavo Pereti   | gustavo@gmail.com | 12345678 |
            | Manuela Joaquina | manu@gmail.com    | 12345678 |
            | Maria da Silva   | maria@gmail.com   | 12345678 |


