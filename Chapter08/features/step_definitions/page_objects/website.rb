  require_relative 'login_page'
  require_relative 'booking_page'

  class Website < Container
    def login_page
      @login_page = LoginPage.new(@browser)
    end

    def booking_page
      @booking_page = BookingPage.new(@browser)
    end

    def close
      @browser.close
    end
  end 