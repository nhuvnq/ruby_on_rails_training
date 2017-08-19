class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
    	t.references :client, index:true
    	t.string :addr
      t.timestamps
    end
  end
end
