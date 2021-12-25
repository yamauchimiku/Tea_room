class AddAddressToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :address, :text
  end
end
