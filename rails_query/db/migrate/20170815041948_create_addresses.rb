class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :addr
      t.references :client

      t.timestamps
    end
  end
end
