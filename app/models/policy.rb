class Policy < ActiveRecord::Base
	has_many :plans
	has_many :coverages, :through => :plans
	has_many :exclusions, :through => :plans
end
