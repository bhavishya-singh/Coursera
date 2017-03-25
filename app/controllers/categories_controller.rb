class CategoriesController < ApplicationController
    
    before_action :set_category ,:only => [:edit,:update,:delete]

  def index
    @categories = Category.all
  end

  def new
     @category = Category.new
  end

  def edit
     puts "checkkkkkkkkkkk#{@category.id}"
  end

  def create
    @category = Category.create(cat_params)
    return redirect_to '/categories'
  end

  def update
    puts "checkkkkkkkkkkk#{@category.id}"
    @category.update(cat_params)
    return redirect_to "/categories"
  end

  def delete
    @category.destroy
    return redirect_to "/categories"
  end

  private

  def cat_params
    params.require(:category).permit(:name,:description)
  end

  def set_category
    @category = Category.find(params[:id])
  end

end
