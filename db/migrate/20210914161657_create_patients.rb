class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :medical_history
      t.integer :age
      t.boolean :insured
      t.integer :doctor_id
    end
  end
end
