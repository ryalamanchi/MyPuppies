require 'watir-webdriver'


Before do |scenario|
  @browser = Watir::Browser.new :firefox
  # @browser = Watir::Browser.new :chrome
  # cucumber.wants_to_quit = true unless s.failed?
end


After do
  @browser.close
end