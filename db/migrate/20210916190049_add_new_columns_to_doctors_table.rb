class AddNewColumnsToDoctorsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :doctors, :location, :string
    add_column :doctors, :phone_number, :string
    add_column :doctors, :been_in_practice_for, :integer
    add_column :doctors, :reminders, :string
    add_column :doctors, :awards, :string
  end
end
