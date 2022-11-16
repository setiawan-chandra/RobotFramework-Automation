***Settings***
Library     SeleniumLibrary

***Test Cases***
Test Case Sign In
        ${default_implicit_wait}=  SeleniumLibrary.Get Selenium Speed
        SeleniumLibrary.Set Selenium Speed  0.25s
        
        Open Browser                                    https://trello.com/home                             Chrome
        SeleniumLibrary.Maximize Browser Window
        
        Wait Until Element is Enabled                   css:div#BXP-APP > header.BigNavstyles__Header-sc-1mttgq7-1.dnqBGB > div > div.BigNavstyles__NavBar-sc-1mttgq7-3.dgpKao > div.Buttonsstyles__ButtonGroup-sc-1jwidxo-3.jnMZCI > a:nth-child(1)
        Click Element                                   css:div#BXP-APP > header.BigNavstyles__Header-sc-1mttgq7-1.dnqBGB > div > div.BigNavstyles__NavBar-sc-1mttgq7-3.dgpKao > div.Buttonsstyles__ButtonGroup-sc-1jwidxo-3.jnMZCI > a:nth-child(1)
        
        Wait Until Location Is                           https://trello.com/login

        Wait Until Element is Enabled                   id:user
        Input Text                                      id:user                                         wawan@gmail.com
     
        Click Element                                   id:login
        
        Wait Until Page Contains                        Log in to continue to:                          10s
        Wait Until Element is Enabled                   name:password
        Input Text                                      name:password                                   @TesQA
        
        Click Element                                   id:login-submit

Test Case Create Board       
        # Wait Until Location Is                          https://trello.com/wawantan17/boards
        Wait Until Element is Enabled                   class:_1N9LJYg3C9x47Y
        Click Element                                   class:_1N9LJYg3C9x47Y
        Wait Until Element is Enabled                   class:_3Qtx4lodxp9J0E
        Click Element                                   class:_3Qtx4lodxp9J0E

        Wait Until Element is Enabled                   css:body > div.atlaskit-portal-container > div > section > div > form > div:nth-child(1) > label > input
        Input Text                                      css:body > div.atlaskit-portal-container > div > section > div > form > div:nth-child(1) > label > input              Testing AUTOMATION
        Mouse Down                                      css:body > div.atlaskit-portal-container > div > section > div > form > button
        Click Element                                   css:body > div.atlaskit-portal-container > div > section > div > form > button
        
Test Case Create List        
        Wait Until Element is Enabled                   class:list-name-input                   10s
        Input Text                                      class:list-name-input                   To Do
        Click Element                                   css:#board > div > form > div > input

        Wait Until Element is Enabled                   class:list-name-input
        Input Text                                      class:list-name-input                   Done
        Click Element                                   css:#board > div > form > div > input

        Wait Until Element is Enabled                   css:#board > div.js-add-list.list-wrapper.mod-add > form > div > a
        Click Element                                   css:#board > div.js-add-list.list-wrapper.mod-add > form > div > a
        
        Wait Until Element is Enabled                   class:js-add-a-card
        Click Element                                   class:js-add-a-card

        Wait Until Element is Enabled                   css:#board > div:nth-child(1) > div > div.list-cards.u-fancy-scrollbar.u-clearfix.js-list-cards.js-sortable.ui-sortable > div > div.list-card.js-composer > div > textarea
        Input Text                                      css:#board > div:nth-child(1) > div > div.list-cards.u-fancy-scrollbar.u-clearfix.js-list-cards.js-sortable.ui-sortable > div > div.list-card.js-composer > div > textarea      NEW Test 1                              
        Click Element                                   css:#board > div:nth-child(1) > div > div.list-cards.u-fancy-scrollbar.u-clearfix.js-list-cards.js-sortable.ui-sortable > div > div.cc-controls.u-clearfix > div:nth-child(1) > input
        Click Element                                   css:#board > div:nth-child(1) > div > div.list-cards.u-fancy-scrollbar.u-clearfix.js-list-cards.js-sortable.ui-sortable > div > div.cc-controls.u-clearfix > div:nth-child(1) > a

Test Case Move Card        
        Drag And Drop                                   css:#board > div:nth-child(1) > div > div.list-cards.u-fancy-scrollbar.u-clearfix.js-list-cards.js-sortable.ui-sortable > a > div.list-card-details.js-card-details > span      css:#board > div:nth-child(2) > div > div.card-composer-container.js-card-composer-container

#Untuk Memvalidasi bahwa card sudah di pindahkan ke DONE        
        Element Text Should Be                          css:#board > div:nth-child(2) > div > div.list-cards.u-fancy-scrollbar.u-clearfix.js-list-cards.js-sortable.ui-sortable > a > div.list-card-details.js-card-details > span      NEW Test 1

        sleep  5s
        Close Browser
        
# ***Keywords***
   
