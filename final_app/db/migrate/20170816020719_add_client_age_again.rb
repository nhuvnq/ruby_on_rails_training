class AddClientAgeAgain < ActiveRecord::Migration[5.1]
  def change
  	add_column :clients, :age, :integer
  	say "hello from def change"
  end
  def up
  	change_column :clients, :name, :string
 			puts "dir.up"
  end
  def down
  	change_column :clients, :name, :text
 			puts "dir.down"
  end
 	
end