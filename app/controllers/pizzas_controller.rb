class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def new

  end

  def create

  end

  def edit

  end

  def destroy

  end

  def update

  end

  private

  def pizzas_params
    params.require(:pizza).permit(:price, :flavor_id)
  end
end