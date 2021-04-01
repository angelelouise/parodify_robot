***Settings***

Documentation   Testes da página de login

Resource       ../resources/base.robot


#executa após cada teste
Test Teardown   Take Screenshot

***Test Cases***
Login com sucesso
    [tags]          smoke
    Open Login Page 
    #input[name*=email]
    Login with                  papito@parodify.com     pwd123
    Logout Link Should Be Visible

Senha incorreta
    Open Login Page
    Login with                  papito@parodify.com     abc123
    Alert Should Be             Opps! Dados de acesso incorretos!

Email incorreto
    Open Login Page
    Login with                  teste@parodify.com     pwd123
    Alert Should Be             Opps! Dados de acesso incorretos!

Email não informado
    Open Login Page
    Login with                  ${EMPTY}    pwd123
    Alert Should Be             Opps! Dados de acesso incorretos!

Senha não informada
    Open Login Page
    Login with                  papito@parodify.com     ${EMPTY}
    Alert Should Be             Opps! Dados de acesso incorretos!
