class HealthySwapQuery < ActiveRecord::Base
  attr_accessible :favorite_cereal

  def perform_swap
    product1 = Product.find_by_name(favorite_cereal)
    product2 = Product.find_by_name('Enviro Koala Kris')
    [product1, product2]
  end
end
