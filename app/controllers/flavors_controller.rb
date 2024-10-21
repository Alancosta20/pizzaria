class FlavorsController < ApplicationController
  def index
    @flavors = Flavor.all
  end

  def new
    @flavor = Flavor.new
  end

  def create
    @flavor = Flavor.create(flavors_params)
  end

  def destroy

  end

  def edit

  end

  def update
    
  end

  private

  def flavors_params
    params.require(:flavor).permit(:name, :description)
  end
end
