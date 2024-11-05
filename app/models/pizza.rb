class Pizza < ApplicationRecord
  belongs_to :flavor
  has_many :orders
end
