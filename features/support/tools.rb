def closeSession
    Capybara.current_session.driver.quit
 end