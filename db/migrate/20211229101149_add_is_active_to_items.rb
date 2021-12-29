class AddIsActiveToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :is_active, :boolean, default: true
  end
end
