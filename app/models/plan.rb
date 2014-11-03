class Plan < ActiveRecord::Base
	belongs_to :policy
	has_many :coverages
	has_many :exclusions

end
