class CartsController < ApplicationController
  def index
    @cart= Cart.last
  end
end