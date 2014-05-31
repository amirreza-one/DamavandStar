class Tire < ActiveRecord::Base
  belongs_to :brand
  belongs_to :pattern
end
