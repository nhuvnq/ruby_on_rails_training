class Client < ApplicationRecord
	after_initialize do |user|
		puts "this is initialize"
	end

	after_find do |user|
		puts "Congrats! You found 1 clients"
	end

	after_touch do |user|
		puts "Hey! You have touch one user"
	end
end
