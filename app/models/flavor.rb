class Flavor < ApplicationRecord
  has_many :pizzas
  validates_presence_of :name
end
