class CreateHealthySwapQueries < ActiveRecord::Migration
  def change
    create_table :healthy_swap_queries do |t|
      t.string :favorite_cereal

      t.timestamps
    end
  end
end
