class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
     @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.create(cat_params)
    return redirect_to '/categories'
  end

  def update
  end

  def delete
  end

  private

  def cat_params
    params.require(:category).permit(:name,:description)
  end

end
