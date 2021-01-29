Given('User loads homepage') do                                                
    visit '/'
  end                                                                            
                                                                                 
  When('user signin in the page') do                                   
    @login.userLogin(DATA['email'], DATA['pwd'])
  end                                                                            
                                                                                 
  Then('user can see his logged area') do
    @home.valida_alert()
    expect(@home.alert.text).to eql(MESSAGE_ASSERT['login_sucess'])
    expect(page).to have_content("Conta")
    sleep(0.5)
    @home.close_alert()
  end            
  
  When("user types wrong email to signin") do
    @login.userLogin(DATA['invalid_login'], DATA['pwd']) 
  end
  When("user types wrong password to signin") do                                     
    @login.userLogin(DATA['email'], DATA['invalid_pwd'])  
  end                                                                           

  Then("can see alert about invalid login") do
    @home.valida_alert()
    expect(@home.alert.text).to have_content(DATA['login_fail'])
    @home.close_alert()
  end