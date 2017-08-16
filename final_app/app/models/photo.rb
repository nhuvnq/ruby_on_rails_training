class Photo < ApplicationRecord
	belongs_to :user
	belongs_to :album

	after_touch do |photo|
		puts "Photo %{photo.id}"
	end

	after_destroy :log_destroy_action


	# this is just for testing purpose
	#after_initialize do |photo|
	#	puts "Initialize"
	#	puts @user = User.find(self.user_id)
	#	puts self.album_id = @user.albums.first.id
		#:default_value
	#end

	# 
	
	before_save :default_value ,if: :is_default?



	private
	def log_destroy_action
		puts "Photos destroy"
	end
	def is_default?
		puts "Grrarrrrrr"
		puts self.album_id == nil
	end

		def default_value
			puts "123"
		puts @user = User.find(self.user_id)
		puts self.album_id = @user.albums.first.id
	end
	
end
