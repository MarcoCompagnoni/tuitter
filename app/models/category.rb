class Category < ActiveRecord::Base
  attr_accessible :category

	has_many :tweets

	def Category.find_or_create_by_name(name)
		category = Category.where("category = ?",name).first
		if category.nil?
			category = Category.create(:category => name)	
		end
		category
	end
	def to_s
		self.category
	end
end
