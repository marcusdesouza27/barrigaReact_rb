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
    @home.close_alert()
  end                                                                          
                                                                               
  Then("session is closed in site") do   
    expect(page).to have_current_path('https://barrigareact.wcaquino.me/login')                                       
    @home.valida_alert()
    expect(@home.alert.text).to have_content(DATA['logout'])
    @home.close_alert()
  end

  When("user clics in Contas option") do
    @home.loadContas()
  end
  
  Then("Contas page has loaded") do
    expect(page).to have_current_path('https://barrigareact.wcaquino.me/contas')  
    expect(page).to have_content('Contas')
  end

  When("user clics in Extrato option") do                                    
    @home.load_extrato()  
  end                                                                            
                                                                                 
  Then("Extrato page has loaded") do                                             
    expect(page).to have_current_path('https://barrigareact.wcaquino.me/extrato')  
  end                                                                            

  When("user clics in Movimentações option") do
    @home.loadMovement()
  end
  
  Then("Movement page has loaded") do
    expect(page).to have_current_path('https://barrigareact.wcaquino.me/movimentacao') 
  end

  When("user clics in Home option") do                                       
    @home.loadHome()
  end                                                                           
                                                                                
  Then("Home page has loaded") do                                               
    expect(page).to have_current_path('https://barrigareact.wcaquino.me/') 
  end                                                                           