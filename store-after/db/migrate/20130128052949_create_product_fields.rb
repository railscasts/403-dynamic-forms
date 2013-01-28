class CreateProductFields < ActiveRecord::Migration
  def change
    create_table :product_fields do |t|
      t.string :name
      t.string :field_type
      t.boolean :required
      t.belongs_to :product_type

      t.timestamps
    end
    add_index :product_fields, :product_type_id
  end
end
