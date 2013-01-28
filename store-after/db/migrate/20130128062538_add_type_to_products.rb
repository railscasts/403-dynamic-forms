class AddTypeToProducts < ActiveRecord::Migration
  def change
    add_column :products, :product_type_id, :integer
    add_column :products, :properties, :text
  end
end
