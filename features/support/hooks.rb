Before do
    # page.current_window.resize_to(1400, 800)
    Capybara.page.driver.browser.manage.window.maximize
    visit '/'
    # page_certification()
    @login = LoginPage.new
    @home = HomePage.new
end

After do |scenario|
    screenshot = page.save_screenshot("logs/screenshots/#{scenario.__id__}.png")
    embed(screenshot, "image/png", "Screenshot")

    closeSession()
end