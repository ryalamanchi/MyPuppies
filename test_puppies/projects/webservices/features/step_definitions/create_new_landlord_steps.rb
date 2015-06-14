# require 'HTTParty'
When(/^I ask for <firstname>, <lastname>, <trusted> to create a new landloard$/) do
  response = HTTParty.get ('http://localhost:8080/landlords')
  puts response
  p "in When condition"
 # @operations= using(CreateNewLandlordService).operations


  # using(CreateNewLandlordService).landlords('firstName' => 'Alex', 'lastName' => 'Alex Lastname', 'trusted' => 'true')
  using(CreateNewLandlordService).landlords()



  #     get_info_by_zip('USZip' => zip_code)
  # p @operations
end

