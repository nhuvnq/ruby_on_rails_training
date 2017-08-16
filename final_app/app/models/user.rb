class User < ApplicationRecord
	has_many :albums
	has_many :photos, dependent: :destroy

	## need to confirm again, may result in some unwanted record
	before_save :default_values
	before_create :default_values
	after_save :album

	after_find do |user|
		puts "Found!!"
	end
	after_touch :log_when_user_or_photo_touched

	def log_when_user_or_photo_touched
		puts "User : %{self.id}"
	end 
	validates :password, presence: true# :message => "need to have some words :'<"

	# set defaut state 
	def default_values
		self.state = 'active'
	end

	#custom error message
	def custom_error_message
		errors.add(:password,"need to have some words :'<")
		#errors.add(:password,:invalid_char, not_allowed: "<blank>")
		#erros.messages[:password] << "need to have some words :'<"
	end

	def a_method_use_for_testing_validate_purposes
		self.errors[:base] << "This user is invalid"
	end	
	private
	#create a default album when create a new user
	def album
		@album = self.albums.create!(title: 'default')
	end


end
