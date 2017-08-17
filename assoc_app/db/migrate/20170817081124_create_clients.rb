class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
    	t.boolean :is_admin?
    	t.string :address
    	t.integer :age
    	t.boolean :can_access_18?
      t.timestamps
    end
  end
end
