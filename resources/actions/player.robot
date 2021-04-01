***Settings***

Documentation   Ações da página de player

***Keywords***

Login
    Open Login Page
    Login with  papito@parodify.com  pwd123
Open Search Page
    Click       css=a[href*=search]

Check If Search Page is Opened
    Wait For Elements State     xpath=//h2[contains(text(), "Buscar")]      visible     10

Click On Sertanejo
    Click       xpath=//img[contains(@src, "sertanejo.png")]/..

Check If Sertanejo is Opened    
    Wait For Elements State     xpath=//h2[contains(text(), "Sertanejo")]      visible     10

Click On Marcus e Debug
    Click       xpath=//p[contains(text(), "Marcus e Debug")]

Check If Marcus e Debug is Opened
    Wait For Elements State     xpath=//h2[contains(text(), "Músicas")]      visible     10

Click On The Music
    Click       xpath=//h2[contains(text(), "Bug de Manhã")]/../..//div[contains(@class, "play")]//a

Check If Music is Playing
    Get Style       xpath=//h2[contains(text(), "Bug de Manhã")]/../../..       color       equal      rgb(225, 0, 180)