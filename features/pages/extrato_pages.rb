class ExtratoPage <SitePrism::Page
    element :movRemove, :xpath, '//span[contains(.,"Movimentacao 1, calculo saldo")]/../../..//i[@class="far fa-trash-alt"]'
    element :movEdit, :xpath, '//span[contains(.,"Movimentacao 1, calculo saldo")]/../../..//i[@class="fas fa-edit"]'
    
    def click_edit_mov
        movEdit.click
    end

    def delete_movement
        movRemove.click
    end
end