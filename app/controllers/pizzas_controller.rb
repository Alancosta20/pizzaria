class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def new
    @pizza = Pizza.new
  end

  def create
    @pizza = Pizza.new(pizzas_params)
    if @pizza.save
      redirect_to pizzas_path
    else
      render :new
    end

  end

  def edit
    @pizza=Pizza.find(params[:id])

  end

  def destroy
    @pizza=Pizza.find(params[:id])
    @pizza.destroy
    redirect_to pizzas_path
  end

  def update
    @pizza=Pizza.find(params[:id])
    @pizza.update(pizzas_params)
    redirect_to pizzas_path
  end

  private

  def pizzas_params
    params.require(:pizza).permit(:price, :flavor_id)
  end
end