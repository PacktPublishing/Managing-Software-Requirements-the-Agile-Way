class Traveller
  attr_reader :logged_in

  def initialize
    @browser = Watir::Browser.new
  end

  def visit(url)
    @browser.goto url
  end

  def login(usr, pwd, confirmation_page)
    @browser.text_field(type: 'email').set usr
    @browser.text_field(type: 'password').set pwd
    @browser.button(type: 'submit').click
    @browser.wait_until { @browser.window.url.include? confirmation_page}
  end

  def find_booking
    @browser.element(css: "#bookings > div.row > div.col-md-5.offset-0.o4 > div.d-flex.flex-column > a > b")
  end

  def logged_in?
    @browser.div(id: "logged-in")
  end
end
