class CreateAccountHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :account_histories do |t|
      t.integer :credit_rating
      t.references :account
      t.timestamps
    end
  end
end
