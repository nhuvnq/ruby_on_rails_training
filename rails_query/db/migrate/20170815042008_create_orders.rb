class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
    	t.references :client
      t.timestamps
    end
  end
end
