class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.boolean :terms_of_service, :default => "false"
      t.string :name

      t.timestamps
    end
  end
end
