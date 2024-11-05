class FlavorsController < ApplicationController
  def index
    @flavors = Flavor.all
  end

  def new
    @flavor = Flavor.new
  end

  def create
    @flavor = Flavor.new(flavors_params)
    if @flavor.save
      redirect_to flavors_path
    else
      render :new 
    end
  end

  def destroy
    @flavor=Flavor.find(params[:id])
    @flavor.destroy
    redirect_to flavors_path

  end

  def edit
    @flavor=Flavor.find(params[:id])

  end

  def update
    @flavor=Flavor.find(params[:id])
    @flavor.update(flavors_params)
    redirect_to flavors_path
  end

  private

  def flavors_params
    params.require(:flavor).permit(:name, :description)
  end
end
