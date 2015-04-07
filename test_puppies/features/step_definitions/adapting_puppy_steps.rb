# @cko = CheckoutPage.new(@browser)

Given /^I am on the puppy adoption site$/ do
  puts "Inside"
  @browser.goto "http://puppies.herokuapp.com"
end

When /^I click the View Details button$/ do

  @browser.button(:value, 'View Details').click
end

And /^I click the Adopt Me button$/ do
  # @browser.button(:value, 'Adopt Me!').click
  @cart = ShoppingCartPage.new(@browser)
  @cart.adopt_me
end

And /^I click the Complete the Adoption button$/ do
  # @browser.button(:value, 'Complete the Adoption').click
  @cart.proceed_to_checkout
end


And /^I enter "([^\"]*)" "([^\"]*)" "([^\"]*)" and "([^\"]*)"$/ do |name, address, email, paytype|
  # puts "in checkout page"

  # @browser.text_field(:id, "order_name").set name
  # @browser.text_field(:id, "order_address").set address
  # @browser.text_field(:id, "order_email").set email
  # @browser.select_list(:id, "order_pay_type").select paytype
  @cko = CheckoutPage.new(@browser)

  # puts "field #{@cko.name}" if @cko.name?
  @cko.name = (name)
  @cko.address = (address)
  @cko.email = (email)
  @cko.pay_type = (paytype)
  # @browser.place_order

end

And /^I click the Place Order button$/ do
  # @cko = CheckoutPage.new(@browser)
  @cko.place_order
  # @browser.button(:value, "Place Order").click
end

Then(/^I should see "(.*?)"$/) do |text|
  puts "Successfully adopt the puppy" if @browser.text.should include text
end


And /^I click the Adopt Another Puppy button$/ do
  @cart.continue_shopping

  # @cart.continue_shopping
  # @browser.button(:value, 'Adopt Another Puppy').click
  # @browser.text_field(:index, 0).click

end

When(/^I select the second View Details button$/) do
  if @browser.button(:index, 1).exist?
    @browser.button(:index, 1).click
pw
  end
end

When(/^I should see first ([^\"]*) and ([^\"]*) for line item (\d+)$/) do |firstname, firstamount, line_item|

  puts "before table"
  puts @cart.row_for(line_item.to_i)
  puts @cart.cart_element[cart.row_for(line_item.to_i)][1].text
  row = row_for(line_item.to_i)
  #puts row
  #puts @browser.table(:index => 0)[row][2].text
  #@browser.table(:index => 0)[row][1].text.should include firstname

  #@cart.cart[@cart.row_for(line_item.to_i)][1].should include firstname
  @cart.cart[0][1].should include firstname
  puts "after table"

  # @cart = ShoppingCartPage.new(@browser)
  @cart.name_for_line_item(line_item.to_i).should include firstname
  @cart.subtotal_for_line_item(line_item.to_i).should include firstamount
  row = row_for(line_item.to_i)
  # puts @browser.table(:index => 0)[row][1].text
  # puts @cart.name_for_line_item(line_item.to_i)
  # @browser.table(:index => 0)[row][1].text.should include firstname
  # @browser.table(:index => 0)[row][3].text.should include firstamount
end

When(/^I should see second ([^\"]*) and ([^\"]*) for line item (\d+)$/) do |secondpuppyname, secondprice, line_item|
  # @cart = ShoppingCartPage.new(@browser)
  @cart.name_for_line_item(line_item.to_i).should include secondpuppyname
  @cart.subtotal_for_line_item(line_item.to_i).should include secondprice
  # puts @browser.table(:index => 0)[row][1].text
  # @browser.table(:index => 0)[row][1].text.should include secondpuppyname
  # @browser.table(:index => 0)[row][3].text.should include secondprice
  # row = row_for(line_item.to_i)
end

When(/^I should see ([^\"]*) as the cart total$/) do |total|
  # @cart = ShoppingCartPage.new(@browser)
  @cart.cart_total.should == total
  # @browser.td(:class, "total_cell").text.should == total
end


def row_for(line_item)
  (line_item - 1) * 6
end

