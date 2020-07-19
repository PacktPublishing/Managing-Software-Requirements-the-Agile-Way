
require 'watir'
require 'webdrivers'
require 'minitest'

Before do 
  @traveller = Traveller.new
  @options = {
    login_page: 'https://www.phptravels.net/login/',
    login_confirmation_page: 'https://www.phptravels.net/account/',
    bookings_page: 'https://www.phptravels.net/account/',
    booked_hotel: 'Rendezvous Hotels'
  }
end

# traveller.visit("https://www.phptravels.net/login")
# traveller.login("user@phptravels.com'", "demouser")
# assert traveller.logged_in?
# traveller.visit('https://www.phptravels.net/account/')
# booking = traveller.find_booking
# assert booking.text, 'Rendezvous Hotels'


Given('Traveller is at the log-in page') do
  @traveller.visit @options[:login_page]
end

When('Traveller enters the correct username') do
  @options[:usrname] = "user@phptravels.com"
end

When('Traveller enters the correct password') do
  @options[:pwd] = "demouser"
end


When('Traveller submits credentials') do
  @traveller.login(@options[:usrname], @options[:pwd], @options[:login_confirmation_page])
  assert @traveller.logged_in?
end

Then('Traveller is taken to their bookings page') do
  @traveller.visit @options[:bookings_page]
end

Then('Traveller sees their booking') do
  booking = @traveller.find_booking
  assert booking.text, @options[:booked_hotel]
end




