require "active_record"

ActiveRecord::Base.establish_connection({
	:adapter => "postgresql",
	:host => "localhost",
	:username => "Sue",
	:database => "restaurant_picker"
})

ActiveRecord::Base.logger = Logger.new(STDOUT)