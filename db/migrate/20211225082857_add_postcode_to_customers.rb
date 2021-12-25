class AddPostcodeToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :postcode, :string
  end
end
