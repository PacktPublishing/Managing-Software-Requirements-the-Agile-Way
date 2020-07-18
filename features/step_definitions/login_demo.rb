
require 'watir'
require 'webdrivers'
require 'minitest'

Before do 
  @browser = Watir::Browser.new
end

After do
  @browser.close
end

Given('Traveller is at the log-in page') do
  @browser.goto 'https://www.phptravels.net/login'
end

When('Traveller enters the correct username') do
  @browser.text_field(type: 'email').set 'user@phptravels.com'
end

When('Traveller enters the correct password') do
  @browser.text_field(type: 'password').set 'demouser'
end


When('Traveller submits credentials') do
  @browser.button(type: 'submit').click
  @browser.wait_until { @browser.window.url.include? 'https://www.phptravels.net/account' }
end

Then('Traveller is taken to their bookings page') do
  assert_equal @browser.url, 'https://www.phptravels.net/account/'
end

Then('Traveller sees their booking') do
  expected_hotel = 'Rendezvous Hotels'
  screen_hotel = @browser.element(css: "#bookings > div.row > div.col-md-5.offset-0.o4 > div.d-flex.flex-column > a > b").text
  assert_equal screen_hotel, expected_hotel
end




