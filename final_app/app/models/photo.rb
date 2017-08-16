class Photo < ApplicationRecord
	belongs_to :user
	belongs_to :album

	validates :title, presence: true
	validates :like, numericality: {only_integer: true}

	after_initialize do |photo|
		puts "Initialize"
		self.like = 0
		self.description=""
		puts @user = User.find(self.user_id)
		puts self.album_id = @user.albums.first.id
		#:default_value
	end
	before_create :default_value

	def default_value
		self.like = 0
		puts @user = User.find(self.user_id)
		puts self.album_id = @user.albums.first.id
	end

end
