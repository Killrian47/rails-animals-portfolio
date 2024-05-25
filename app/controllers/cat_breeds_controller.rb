# The controller for the CatBreeds model
class CatBreedsController < ApplicationController
  before_action :set_cat_breed, only: %i[show edit update destroy]

  def index
    @cat_breeds = CatBreed.all
  end

  def show; end

  def new
    @cat_breed = CatBreed.new
  end

  def create
    @cat_breed = CatBreed.new(cat_breed_params)
    if @cat_breed.save
      redirect_to @cat_breed, notice: "Cat breed was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @cat_breed.update(cat_breed_params)
      redirect_to @cat_breed, notice: "Cat breed was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @cat_breed.destroy
    redirect_to cat_breeds_url, notice: "Cat breed was successfully destroyed."
  end

  private

  def set_cat_breed
    @cat_breed = CatBreed.find(params[:id])
  end

  def cat_breed_params
    params.require(:cat_breed).permit(:name)
  end
end
