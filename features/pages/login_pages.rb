class LoginPage < SitePrism::Page
    element :input_login, 'input[placeholder="seu@email.com"]'
    element :input_pwd, 'input[type="password"]'
    element :btn_submit, 'button[type="submit"]'

    def userLogin(login, password)
        input_login.set(login)
        input_pwd.set(password)
        btn_submit.click
    end
end