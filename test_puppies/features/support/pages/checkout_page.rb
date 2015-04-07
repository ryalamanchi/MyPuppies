class CheckoutPage
  include PageObject

  # def initialize(browser)
  #   @browser = browser
  # end
  #
  # def name=(name)
  #   @browser.text_field(:id => "order_name").set(name)
  # end

  text_field(:name, :id => "order_name")
  text_field(:address, :id => "order_address")
  text_field(:email, :id => "order_email")
  select_list(:pay_type, :id => "order_pay_type")
  button(:place_order, :value => "Place Order")

end