***Settings***
Resource        ./variables.robot



***Keywords***
Inicia sessão
    Open Browser                    ${url}                          chrome

Finaliza sessão
    Capture Page Screenshot
    Close Browser

Sumary
    Go To                           ${url}   
    Click Element                   ${addToCart}
    Sleep                           5
    Click Element                   ${proceedCheckout}
    Sleep                           5
    Click Element                   ${checkoutSummary}
    Sleep                           5

Sing In
    Input Text                      id:email                        ${email}
    Input Text                      id:passwd                       ${password}
    Click Element                   id:SubmitLogin
    Sleep                           5

You Delivery Address
    Click Element                   ${updateDelivery} 
    Sleep                           5

You Billing Address
    Click Element                   ${updateBilling}
    Sleep                           5

First Name
    [Arguments]                     ${fname}
    Click Element                   id:firstname
    Input Text                      id:firstname                    ${fname}

Last Name
    [Arguments]                     ${lname}
    Click Element                   id:lastname
    Input Text                      id:lastname                     ${lname}

Company
    [Arguments]                     ${cpn}
    Click Element                   id:company
    Input Text                      id:company                      ${cpn}

Address
    [Arguments]                     ${ads}
    Click Element                   id:address1
    Input Text                      id:address1                     ${ads}

Number
    [Arguments]                     ${nbr}
    Click Element                   id:address2
    Input Text                      id:address2                     ${nbr}

City
    [Arguments]                     ${ct}
    Click Element                   id:city
    Input Text                      id:city                         ${ct}

State
    Select From List By Label       id:id_state                     Ohio

Postal Code
    [Arguments]                     ${pc}
    Click Element                   id:postcode
    Input Text                      id:postcode                     ${pc}

Country
    Select From List By Label       id:id_country                   United States

Home Phone
    [Arguments]                     ${hph}
    Click Element                   id:phone
    Input Text                      id:phone                        ${hph}

Mobile Phone
    [Arguments]                     ${mph}
    Click Element                   id:phone_mobile
    Input Text                      id:phone_mobile                 ${mph}

Add info
    [Arguments]                     ${info}
    Click Element                   id:other
    Input Text                      id:other                        ${info}

Reference
    [Arguments]                     ${rfrc}
    Click Element                   id:alias
    Input Text                      id:alias                        ${rfrc}

Save
    Click Element                   ${saveAddress}

Proceed To Checkout
    Click Element                   ${checkoutAddress}
    Sleep                           5

Your Address Delivery
    First Name                      Raffael
    Last Name                       Girotto
    Company                         Shopping Tatuapé
    Address                         Rua Domingos Agostim
    Number                          91
    City                            São Paulo
    State
    Postal Code                     73302
    Home Phone                      (11)1312-8922
    Mobile Phone                    (11)98765-4321
    Add info                        Não
    Reference                       Shopping Tatuapé
    Save
    Proceed To Checkout
    Sleep                           5

Your Address Billing
    First Name                      Desafio
    Last Name                       QA
    Company                         Justa
    Address                         Alameda Xingu
    Number                          350
    City                            Barueri
    State
    Postal Code                     22056
    Home Phone                      (11)2289-2004
    Mobile Phone                    (11)91234-5678
    Add info                        Não
    Reference                       Rio Negro Office Building
    Save
    Proceed To Checkout
    Sleep                           5

Shipping
    Select Checkbox                 ${checkBoxTerms}
    Click Element                   ${checkoutShipping}
    Sleep                           5

Pay By Bank Wire
    Click Element                   ${bankWire}
    Sleep                           5
    Click Element                   ${confirmOrder}
    Sleep                           5

Pay By Check
    Click Element                   ${check}
    Sleep                           5
    Click Element                   ${confirmOrder}
    Sleep                           5