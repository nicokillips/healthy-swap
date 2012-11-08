class Product < ActiveRecord::Base
  attr_accessible :name, :calories, :saturated_fat, :sugar_type
end
