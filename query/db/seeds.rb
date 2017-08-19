# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

client_list =%w[Edward Henry Gilbert Robert Alice Satan]

client_list.each do |t|
	Client.create! name:t
end

role = %w[pirate officer criminal king duke soldier]
role.each do |t|
	Role.create! name:t
end
