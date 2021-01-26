# Ruby-Capybara-cadastro-usuario-compra-de-livros
Foram automatizados o teste de cadastro de usuários na loja Saraiva, onde 

Ferramentas e frameworks utilizados:
- Visual Studo Code
- Uso do framework Capybara (Linguagem Ruby)
- Cucumber para escrita de testes no formato BDD
- Gem Faker utlizada para gerar varios nomes, emails e endereços
- Gem CPF Faker utlizada para gerar varios CPF
- Gen Allure para geração de relatórios
- Cmder (terminal de comandos)

Passo a passo para execução:
Validar apenas o Cadastro de Usuário (cenário feliz):
Pelo terminal de comando cmder:
cucumber -t @cadastro

Validação completa (Cadastro de Usuário + Tentativa de Cadastro)
cucumber

Relatórios
Após o término dos testes, execute no terminal o comando abaixo:
 allure serve logs\


+ Informações sobre a instalação do Allure:
https://docs.qameta.io/allure/#_installing_a_commandline
