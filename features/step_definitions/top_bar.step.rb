When("user clicks in Resetar option") do
    @home.reset()
  end
  
  Then("user can see message {string}") do |string|
    @home.valida_alert()
    expect(@home.alert.text).to have_content(DATA['reset_alert'])
    @home.close_alert()
  end

  When("user clicks in Sair option") do                                        
    @home.logout()
  end                                                                          
                                                                               
  Then("session is closed in site") do                                         
    @home.valida_alert()
    expect(@home.alert.text).to have_content(DATA['logout'])
    @home.close_alert()
  end                                                                          