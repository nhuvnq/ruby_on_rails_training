class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :description
      t.string :scope
      t.references :user
      t.references :album
      

      t.timestamps
    end
  end
end
