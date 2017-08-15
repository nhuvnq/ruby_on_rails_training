class User < ApplicationRecord
	has_many :albums
	has_many :photos
	before_save :default_values
	before_create :default_values
	after_save :album

	# set defaut state 
	def default_values
		self.state = 'active'
	end

	private
	#create a default album when create a new user
	def album
		@album = self.albums.create!(title: 'default')
	end
end
