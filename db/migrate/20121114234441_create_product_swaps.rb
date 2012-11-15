class CreateProductSwaps < ActiveRecord::Migration
  def change
    create_table :product_swaps do |t|
      t.integer "product1_id"
      t.integer "product2_id"
      t.string "reason"

      t.timestamps
    end
  end
end
