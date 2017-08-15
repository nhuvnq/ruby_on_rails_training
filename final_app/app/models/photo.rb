class Photo < ApplicationRecord
	belongs_to :user
	belongs_to :album
	after_initialize do |photo|
		puts "Initialize"
		#puts @user = User.find(self.user_id)
		#puts self.album_id = @user.albums.first.id
		:default_value
	end
	before_create :default_value

	def default_value
		puts @user = User.find(self.user_id)
		puts self.album_id = @user.albums.first.id
	end

end
