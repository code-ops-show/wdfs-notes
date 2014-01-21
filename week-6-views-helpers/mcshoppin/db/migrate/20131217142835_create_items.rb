class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :quantity
      t.integer :subtotal

      t.timestamps
    end
  end
end
