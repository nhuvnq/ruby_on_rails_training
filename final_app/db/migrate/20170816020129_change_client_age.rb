class ChangeClientAge < ActiveRecord::Migration[5.1]
  def up
  	remove_column :clients, :age, :string
  	puts "up"
  end

say "hello"
  def down
  	add_column :clients, :age, :string
  	puts "down"
  end
end
