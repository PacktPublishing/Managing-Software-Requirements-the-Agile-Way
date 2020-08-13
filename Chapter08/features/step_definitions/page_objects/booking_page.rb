require_relative 'container'

class BookingPage < Container
    def booked_in?
      booked_hotel == 'Rendezvous Hotels'
    end

    def loaded?
      @browser.window.url.include? 'https://www.phptravels.net/account'
    end

    private

    def booked_hotel
      @browser.element(css: "#bookings > div.row > div.col-md-5.offset-0.o4 > div.d-flex.flex-column > a > b").text
    end
  end 