class Department < ApplicationRecord
	has_many :people
	validates_associated :people
end
