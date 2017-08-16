class ChangePeopleColumn < ActiveRecord::Migration[5.1]
  def change
  	remove_column :people, :eula, :string
  	add_column :people, :pass, :string
  	add_column :people, :pass_confirmation, :string
  end
end
