class Customer < ActiveRecord::Base
	has_many :orders
	has_many :notes
	validates_uniqueness_of :email 
end
 
