class Brand < ActiveRecord::Base
  has_many :tires
  has_many :patterns

end
