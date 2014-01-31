class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :number
      t.integer :user_id
      t.string :status
      t.string :tracking_code

      t.timestamps
    end
  end
end
