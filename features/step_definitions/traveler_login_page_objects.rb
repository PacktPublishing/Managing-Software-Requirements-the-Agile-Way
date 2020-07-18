require 'watir'
require 'webdrivers'
require 'minitest'

Before do 
  @site = Site.new(Watir::Browser.new)
    
end

After do
  @site.close
end

Given('Traveller is at the log-in page') do
   @login_page = @site.login_page.open
 end

When('Traveller enters the correct username') do
  true
end

When('Traveller enters the correct password') do
  true
end

When('Traveller submits credentials') do
  @booking_page = @login_page.login_as 'user@phptravels.com', 'demouser'
end

Then('Traveller is taken to their bookings page') do
  assert @booking_page
end

Then('Traveller sees their booking') do
  assert @booking_page.booked_in?
end
