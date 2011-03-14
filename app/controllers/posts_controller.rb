class PostsController < ApplicationController
  layout 'admin'
  respond_to :html, :xml, :js

  def index
    @posts = Post.order "publication DESC"

    respond_with @posts
  end

  def show
    @post = Post.find params[:id]

    respond_with @post
  end

  def new
    @post = Post.new

    respond_with @post
  end

  def edit
    @post = Post.find params[:id]
    
    respond_with @post
  end

  def create
    @post = Post.new params[:post]

    if @post.save
      flash[:notice] = 'Post was successfully created.'
      respond_with @post
    else
      render :action => :new
    end
  end

  def update
    @post = Post.find params[:id]

    if @post.update_attributes params[:post]
      flash[:notice] = 'Post was successfully updated.'
      respond_with @post
    else
      render :action => :edit
    end
  end

  def destroy
    @post = Post.find params[:id]
    @post.destroy

    respond_with @post
  end
end
