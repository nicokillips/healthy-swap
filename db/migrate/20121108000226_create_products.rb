class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :calories
      t.integer :saturated_fat
      t.string :sugar_type

      t.timestamps
    end
  end
end
