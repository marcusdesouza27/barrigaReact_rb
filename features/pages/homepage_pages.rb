class HomePage < SitePrism::Page
    element :navBar, '#navbarSupportedContent'
    element :homeIcon, 'i[class*="fa-home"]'
    element :movementIcon, 'i[class*="fa-hand-holding-usd"]'
    element :extratoIcon, 'i[class*="fa-history"]'
    element :settingsIcon, 'i[class*="fa-cog"]'
    element :dropdownMenu, 'div[class*="dropdown-menu"]'
    element :menuOption, 'a[href*="contas"]'
    element :resetOption, 'a[href*="reset"]'
    element :logoutOption, 'a[href*="logout"]'
    element :tableAccouts, 'table[class*="table-bordered"]'
    element :alert, 'div[class="toast-message"]'
    element :alert_close_icon, 'button[class="toast-close-button"]'

    def load_extrato
        extratoIcon.click
    end

    def valida_page_loaded
        wait_until_tableAccount_present
    end

    def valida_alert()
        wait_until_alert_visible
        mensagem = alert.text
    end
    def close_alert
        wait_until_alert_close_icon_visible
        alert_close_icon.click
    end

    def reset
        settingsIcon.click
        wait_until_resetOption_visible
        resetOption.click
    end

    def logout
        settingsIcon.click
        wait_until_logoutOption_visible
        logoutOption.click
    end
end