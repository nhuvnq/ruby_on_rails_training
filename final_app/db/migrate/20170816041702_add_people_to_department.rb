class AddPeopleToDepartment < ActiveRecord::Migration[5.1]
  def change
  	add_reference :people, :department, index: true
  	add_column :people, :eula, :string
  end
end
