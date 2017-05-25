class Admins::BlogsController < ApplicationController
before_action :set_blog, only: [:eidt, :update]

  def index
    @blogs = Blog.order(:created_at).page(params[:page])
  end

  def new
    @blog = Blog.new
    @categories = BlogCategory.order(:created_at)
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.blog_url = URI.escape(@blog.title)
    binding.pry
    if @blog.save
      redirect_to admins_blogs_path
    else
      render action: 'new'
    end
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      redirect_to :admins_blogs_path
    else
      render action: 'edit'
    end
  end

  private

  def blog_params
    binding.pry
    params.require(:blog).permit(:title, :content, :blog_url, :header_photo_path, :status)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end

end
