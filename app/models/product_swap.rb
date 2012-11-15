class ProductSwap < ActiveRecord::Base
  attr_accessible :reason, :product1_id, :product2_id

  belongs_to :unhealthy_product, :foreign_key => "product1_id", :class_name => "Product"
  belongs_to :healthy_product, :foreign_key => "product2_id", :class_name => "Product"
end
