class Product < ActiveRecord::Base
  attr_accessible :name, :calories, :saturated_fat, :sugar_type

  has_many :healthy_product_swaps, :foreign_key => "product1_id", :class_name => "ProductSwap"
  has_many :healthy_products, :through => :healthy_product_swaps
end
