class AddLikeToPhoto < ActiveRecord::Migration[5.1]
  def change
  	add_column :photos, :like, :integer, :default => 0
  	change_column_default :photos, :album_id,from: nil, to: 1
  end
end
