Given('User loads homepage') do                                                
    visit '/'
  end                                                                            
                                                                                 
  When('user types his login and password') do                                   
    @login.userLogin("marcusdesouza27@gmail.com", "bassman2712")  
  end                                                                            
                                                                                 
  Then('user can see his logged area') do                                         
    # @HomePage.valida_page_loaded
    expect(page).to have_content("Conta")
  end                                                                            