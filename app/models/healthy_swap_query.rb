class HealthySwapQuery < ActiveRecord::Base
  attr_accessible :favorite_cereal

  def perform_swap
    product1 = Product.find_by_name(favorite_cereal)
    product1.healthy_product_swaps.first if product1
  end
end
