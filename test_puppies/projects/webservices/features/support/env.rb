require 'rspec'
require 'page-object'
require 'logger'
require 'soap-object'
require 'HTTParty'
#require 'rspec-expectations'

World(PageObject::PageFactory)
World(SoapObject::Factory)

# log = Logger.new ('this_month.txt')
# log.debug "log file created"
# log.info 'Starting the test...'

puts "Starting the test.....inside webservice"