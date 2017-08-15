class Client < ApplicationRecord
	has_one :address
	has_many :orders , ->{order('id desc')}
	has_and_belongs_to_many :roles
	scope :test , -> {where (locked: nil)}
	scope :test2, -> {where ("id > 2")}
end
