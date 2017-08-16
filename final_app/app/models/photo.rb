class Photo < ApplicationRecord
	belongs_to :user
	belongs_to :album

	validates :title, presence: true
	validates :like, numericality: {only_integer: true}

	
end
