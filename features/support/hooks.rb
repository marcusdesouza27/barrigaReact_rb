Before do
    Capybara.page.driver.browser.manage.window.maximize
    visit '/'
    
    @login = LoginPage.new
    @home = HomePage.new
    @contas = ContasPage.new
    @extrato = ExtratoPage.new
end

After do |scenario|
    screenshot = page.save_screenshot("logs/screenshots/#{scenario.__id__}.png")
    embed(screenshot, "image/png", "Screenshot")

    closeSession()
end