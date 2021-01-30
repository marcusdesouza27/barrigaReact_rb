class ExtratoPage <SitePrism::Page
    element :movRemove, :xpath '//span[contains(.,"Movimentacao 1, calculo saldo")]/../../..//i[@class="far fa-trash-alt"]'
    element :movEdit, :xpath '//span[contains(.,"Movimentacao 1, calculo saldo")]/../../..//i[@class='fas fa-edit']'

end