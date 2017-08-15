class ChangePhotoColum < ActiveRecord::Migration[5.1]
  def change
  	add_column :photos, :is_public?, :boolean, :default => true
  	remove_column :photos, :scope
  end
end
