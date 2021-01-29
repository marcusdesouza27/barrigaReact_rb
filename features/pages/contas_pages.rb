class ContasPage <SitePrism::Page
    element :input_conta, 'input[placeholder*="Conta"]'
    element :btn_submit, '.btn'
    element :iconDelete, :xpath, '//td[contains(.,"Conta para alterar")]/following-sibling::td/i[@class="far fa-trash-alt"]'
    element :iconEdit, :xpath, '//td[contains(.,"Conta para alterar")]/following-sibling::td/i[@class="far fa-edit"]'

    def addNewAccount(accountName)
        input_conta.set(accountName)
        btn_submit.click
    end

    def editAccount(newAccountName)
        wait_until_iconEdit_visible
        iconEdit.click
        input_conta.set(newAccountName)
        btn_submit.click
    end
    
    def removeAccount
        wait_until_iconDelete_visible
        iconDelete.click
    end
end