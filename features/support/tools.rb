def closeSession
    Capybara.current_session.driver.quit
end

def wait_for_pageload(count=15)
    init = 0
    until (page.execute_script("return document.readyState").eql?('complete') || init == count)
      sleep 0.3
      init += 1
      raise ArgumentError.new("Page not loaded fully") if init == count
    end
  end