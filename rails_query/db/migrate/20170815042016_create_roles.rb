class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.string :name

      t.timestamps
    end

    create_table :clients_roles do |t|
    	t.references :client
    	t.references :roles
    end
  end
end
