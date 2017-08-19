class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
    	t.string :name
      t.timestamps
    end

    create_join_table :clients, : do |t|
    	t.references :clients
    	t.references :roles
    end

  end

end
