class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
    	t.references :physician, index: true
			t.references :patient, index: true
			t.datetime :appoint_date
      t.timestamps
    end
  end
end
