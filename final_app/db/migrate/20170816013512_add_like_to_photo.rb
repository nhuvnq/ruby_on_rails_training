class AddLikeToPhoto < ActiveRecord::Migration[5.1]
  def change
  	add_column :photos, :like, :integer
  	puts "This is def change"
  end

  reversible do |dir|
  	dir.down do |dir|
  		remove_column :photos, :like, :integer
  		puts "This is reversible down"
  	end
  end
end
