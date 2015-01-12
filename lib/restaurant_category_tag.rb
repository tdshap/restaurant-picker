require 'active_record'

class Restaurant_category_tag < ActiveRecord::Base
	belongs_to :Restaurant
	belongs_to :Category
end 