require_relative 'container'
class LoginPage < Container
    URL = "https://www.phptravels.net/login"

    def open
      @browser.goto URL
      self
    end

    def login_as(user, pass)
      user_field.set user
      password_field.set pass

      login_button.click

      next_page = BookingPage.new(@browser)
      Watir::Wait.until { next_page.loaded? }

      next_page
    end

    private

    def user_field
       @browser.text_field(type: 'email')
    end

    def password_field
      @browser.text_field(type: 'password')
    end

    def login_button
      @browser.button(type: 'submit')
    end
  end # LoginPage