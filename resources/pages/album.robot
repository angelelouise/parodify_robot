***Settings***

Documentation   Ações da página de album

***Keywords***

Click On The Music
    [Arguments]     ${song_name}
    Click       xpath=//h2[contains(text(), "${song_name}")]/../..//div[contains(@class, "play")]//a

Check If Music is Playing
    [Arguments]     ${song_name}
    Get Style       xpath=//h2[contains(text(), "${song_name}")]/../../..       color       equal      rgb(225, 0, 180)