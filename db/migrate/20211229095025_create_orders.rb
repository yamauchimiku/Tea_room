class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.string :postcode
      t.string :address
      t.string :name
      t.integer :carriage
      t.integer :total_payment
      t.integer :pay_method
      t.integer :status

      t.timestamps
    end
  end
end
