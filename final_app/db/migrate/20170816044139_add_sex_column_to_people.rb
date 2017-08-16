class AddSexColumnToPeople < ActiveRecord::Migration[5.1]
  def change
  	add_column :people, :sex, :string
  	add_column :people, :phone, :integer
  	add_column :people, :absent,:integer
  	add_column :people, :email, :string
  	add_column :people, :card_number, :integer
  	
  end
end
