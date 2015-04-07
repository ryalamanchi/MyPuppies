require 'rspec'
require 'page-object'
require 'logger'
#require 'rspec-expectations'

World(PageObject::PageFactory)

# log = Logger.new ('this_month.txt')
# log.debug "log file created"
# log.info 'Starting the test...'

puts "Starting the test..."