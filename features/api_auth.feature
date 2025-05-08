Feature: Autenticação do Usuário

  Scenario: Token de autenticação válido
    Given Que eu tenho um usuário criado
    When envio uma requisição para autenticar o usuário
    Then a API deve retornar um token de autenticação