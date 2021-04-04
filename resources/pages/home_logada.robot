***Settings***

Documentation   Ações da página home logada

***Keywords***

Logout Link Should Be Visible
    Wait For Elements State     ${LOGOUT_LINK}     visible     10

Do Logout
    Click       ${LOGOUT_LINK}

Open Search Page
    Click       css=a[href*=search]

Check If Search Page is Opened
    Wait For Elements State     xpath=//h2[contains(text(), "Buscar")]      visible     10
