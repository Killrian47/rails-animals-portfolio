# The controller for the CatBreeds model
class CatBreedsController < ApplicationController
  before_action :set_cat_breed, only: %i[show]

  def index
    @cat_breeds = CatBreed.all
  end

  def show; end

  private

  def set_cat_breed
    @cat_breed = CatBreed.find(params[:id])
  end

  def cat_breed_params
    params.require(:cat_breed).permit(:name, :description)
  end
end
