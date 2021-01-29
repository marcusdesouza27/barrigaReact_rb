When("user adds a new account") do
    @home.close_alert()
    @home.loadContas()
    @contas.addNewAccount('Automation New Account')
  end
  
  Then("user can see the new account in table") do
    @home.valida_alert()
    expect(@home.alert.text).to have_content(MESSAGE_ASSERT['add_account_success'])
  end

  When("user edits an existent account") do
    @home.close_alert()
    @home.loadContas()
    @contas.editAccount('Automation New Account')
  end
  
  Then("user can see the updated account in table") do
    @home.valida_alert()
    expect(@home.alert.text).to have_content(MESSAGE_ASSERT['edit_account_success'])
  end

  When("user removes an existent account") do                                    
    @home.close_alert()
    @home.loadContas()
    @contas.removeAccount()
  end                                                                            
                                                                                 
  Then("user cannot see the account in table") do                                
    expect(@home.alert.text).to have_content(MESSAGE_ASSERT['remove_account_success']) 
  end                                                                            