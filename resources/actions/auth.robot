***Settings***

Documentation       Ações da funcionalidade de autorização/autenticação

***Keywords***

Open Login Page
    #Open Browser é usado para Debug
    #New Browser: tag true roda em headless
    New Browser             ${browser}    ${headless}
    New Page                http://parodify.herokuapp.com/users/sign_in
    #Open Browser            http://parodify.herokuapp.com/users/sign_in

Login with
    [Arguments]     ${email}    ${password}
    Fill Text                   id=user_email       ${email}
    Fill Text                   id=user_password    ${password}
    Click                       css=input[type=submit]

Alert Should Be
    [Arguments]     ${expect}
    Get Text        css=.is-danger .message-body    should be      ${expect}

Login
    Open Login Page
    Login with  papito@parodify.com  pwd123   

Logout Link Should Be Visible
    Wait For Elements State     ${LOGOUT_LINK}     visible     10

Do Logout
    Click       ${LOGOUT_LINK}