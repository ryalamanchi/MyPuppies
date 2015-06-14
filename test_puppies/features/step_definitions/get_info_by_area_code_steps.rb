When /^I ask the service for the supported operations$/ do
  @operations = using(ZipCodeInformationService).operations
  p @operations
end

Then /^"([^"]*)" should be supported$/ do |operation|
  @operations.should include operation.to_sym

end

When /^I ask for the zip code information for "([^"]*)"$/ do |zip_code|
  # @operations = using(ZipCodeInformationService).operations
  puts @operations
  using(ZipCodeInformationService).get_info_by_zip('USZip' => zip_code)
  puts "in Zip code"
end

Then /^I should get the following information:$/ do|table|
  expected = table.hashes.first
  # puts expected
  # puts expected['city']
  using(ZipCodeInformationService) do |service|
    # puts service.class
    # p service.city
    puts "in service code"
    # p service.city
    # service.city.should == expected['city']
    # service.state.should == expected['state']
    # service.area_code.should == expected['area_code']
    # # service.time_zone.should == expected['time_zone']

    service.response_for(:city).should == expected['city']
    service.response_for(:state).should == expected['state']
    service.response_for(:area_code).should == expected['area_code']
    service.response_for(:time_zone).should == expected['time_zone']
  end


end
