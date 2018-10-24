class Api::V1::CategoriesController < ApplicationController
  def index
<<<<<<< HEAD
    @categorys = Category.all
    render json: @categorys
=======
    @categories = Category.all
    render json: @categories
>>>>>>> 0877e87c97a1c14baa5b70e7cf8b07dbcccf2432
  end

  def update
    @category.update(category_params)
    if @category.save
      render json: @category, status: :accepted
    else
<<<<<<< HEAD
      render json: { errors: @category.errors.full_messages }, status: :unprocessible_entity
=======
      render json: {errors: @category.errors.full_messages}, status: :unprocessible_entity
>>>>>>> 0877e87c97a1c14baa5b70e7cf8b07dbcccf2432
    end
  end

  private

  def category_params
    params.permit(:name)
  end

  def find_category
    @category = Category.find(params[:id])
  end
end
