class Order < ActiveRecord::Base
	before_create :generate_number
	belongs_to :customer
	has_many :notes

	validates_uniqueness_of :number


	def generate_number
		self.number = "R" << rand.to_s[2..10] 
	end


end
