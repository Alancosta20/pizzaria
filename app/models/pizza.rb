class Pizza < ApplicationRecord
  belongs_to :flavor
  has many :orders
end
