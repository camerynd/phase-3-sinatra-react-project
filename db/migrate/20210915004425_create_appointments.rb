class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :reason_for_visit
      t.string :date
      t.string :time
      t.integer :patient_id
    end
  end
end
