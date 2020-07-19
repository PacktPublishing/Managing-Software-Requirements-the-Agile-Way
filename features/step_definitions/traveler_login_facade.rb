
require 'watir'
require 'webdrivers'
require 'minitest'

Before do 
  @traveller = Traveller.new
  @options = {}
end

# traveller.visit("https://www.phptravels.net/login")
# traveller.login("user@phptravels.com'", "demouser")
# assert traveller.logged_in?
# traveller.visit('https://www.phptravels.net/account/')
# booking = traveller.find_booking("#bookings > div.row > div.col-md-5.offset-0.o4 > div.d-flex.flex-column > a > b")
# assert booking.text, 'Rendezvous Hotels'


Given('Traveller is at the log-in page') do
  @traveller.visit("https://www.phptravels.net/login")
end

When('Traveller enters the correct username') do
  @options[:usrname] = "user@phptravels.com"
end

When('Traveller enters the correct password') do
  @options[:pwd] = "demouser"
end


When('Traveller submits credentials') do
  @traveller.login(@options[:usrname], @options[:pwd], 'https://www.phptravels.net/account/')
  assert @traveller.logged_in?
end

Then('Traveller is taken to their bookings page') do
  @traveller.visit('https://www.phptravels.net/account/')
end

Then('Traveller sees their booking') do
  booking = @traveller.find_booking("#bookings > div.row > div.col-md-5.offset-0.o4 > div.d-flex.flex-column > a > b")
  assert booking.text, 'Rendezvous Hotels'
end




