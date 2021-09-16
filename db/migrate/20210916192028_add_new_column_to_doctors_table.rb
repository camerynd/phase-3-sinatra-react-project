class AddNewColumnToDoctorsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :doctors, :image_link, :string
  end
end
