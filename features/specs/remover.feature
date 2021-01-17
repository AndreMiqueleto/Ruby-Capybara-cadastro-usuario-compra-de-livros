#language: pt

Funcionalidade: Remover usuários cadastrados
            Eu como usuario cadastrado
    Desejo visualizar os usuários cadastrados
    Para que eu possa exluir um determinado usuário

    
    @temp
    Cenario: Remover usuarios
        Dado que acesso a página de cadastro e tenho os seguintes usuarios:
            | Jose Henrique    | jose@gmail.com    | 12345678 |
            | Joao Batista     | Joao@gmail.com    | 12345678 |
            | Gustavo Pereti   | gustavo@gmail.com | 12345678 |
            | Manuela Joaquina | manu@gmail.com    | 12345678 |
            | Maria da Silva   | maria@gmail.com   | 12345678 |
        Quando solicito a exclusão de um usuario especifico
        Então não devo ver esse item na minha tabela


