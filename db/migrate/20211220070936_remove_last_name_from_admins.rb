class RemoveLastNameFromAdmins < ActiveRecord::Migration[5.2]
  def change
    remove_column :admins, :last_name, :string
    remove_column :admins, :first_name, :string
    remove_column :admins, :last_name_kana, :string
    remove_column :admins, :first_name_kana, :string
    remove_column :admins, :postcode, :string
    remove_column :admins, :address, :text
    remove_column :admins, :phone_number, :string
    remove_column :admins, :is_deleted, :boolean
  end
end
