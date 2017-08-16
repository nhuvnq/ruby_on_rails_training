class Person < ApplicationRecord
	include ActiveModel::Validations
	belongs_to :department
	
	validates_with TestingName
#	validates :terms_of_service, acceptance: {message: 'please accept terms of service to continue'}
#	validates :eula, acceptance: {accept: ['TRUE','accepted']}
	
#	validates :pass, confirmation: true
	#validates :name, presence: true, strict: TokenGenerationException
#	validates :sex, inclusion: {in: %w(male female third_world), 
#		message: "%{value} is not a sex"}
#	validates :email, format: {with: /[a-zA-Z0-9]@[a-zA-Z0-9].com/},
#	uniqueness: true
	#validates :phone, numericality: {only_integer: true}, length: {minimum: 8,
	#		too_short: "%{count} is too short"},allow_nil: true
	#validates :pass_confirmation ,presence: true
	#validates_with GoodnessValidator
end
	