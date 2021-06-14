class BlogsController < ApplicationController
  def create
      @blog = current_user.blogs.build(blog_params)
    #omit
    end
    #omit
    def confirm
      @blog = current_user.blogs.build(blog_params)
      render :new if @blog.invalid?
    end
  end
