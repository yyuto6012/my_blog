class Admins::BlogCategoriesController < ApplicationController

  def index
    @categories = BlogCategory.order(:created_at).page(params[:page])
  end

  def show
    @blog_category = BlogCategory.find(params[:id])
    @blogs = blog_category.blogs
  end

  def new
    @blog_category = BlogCategory.new
  end

  def create
    @blog_category = BlogCategory.new(creaate_params)
    if @blog_category.save
      redirect_to admins_blog_categories_path
    else
      render action: 'new'
    end
  end

  private
  def creaate_params
    params.require(:blog_category).permit(:name, :description)
  end
end
