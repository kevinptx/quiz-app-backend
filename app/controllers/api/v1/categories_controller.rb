class Api::V1::CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render json: @categories
  end

  def update
    @category.update(category_params)
    if @category.save
      render json: @category, status: :accepted
    else
      render json: {errors: @category.errors.full_messages}, status: :unprocessible_entity
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
