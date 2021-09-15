class AddColumnToDoctors < ActiveRecord::Migration[6.1]
  def change
    add_column :doctors, :current_user, :boolean
  end
end
