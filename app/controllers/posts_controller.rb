  class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:new, :edit, :create, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_post

  def index
    @posts = Post.all.reverse
  end

  def show
  end

  def new
    @post = Post.new
    5.times { @post.images.build }
  end

  def edit
    5.times { @post.images.build }
  end

  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        send_new_post_email(@post)
        flash[:success] = 'Post was successfully created'
        format.html { redirect_to @post }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        flash[:success] = 'Post was successfully updated'
        format.html { redirect_to @post }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      flash[:success] = 'Post was successfully destroyed'
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end

  private
    
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:heading, :sub_heading, :body, images_attributes: [:id, :photo, :post_id, :caption, :_destroy])
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  def invalid_post
    logger.error "Attempt to access invalid user #{params[:id]}"
    redirect_to root_url
    flash[:danger] = "Invalid post"
  end

  def send_new_post_email(post)
    Subscriber.find_each do |subs|
      SubscriberMailer.new_post_up(post, subs).deliver_now
    end
  end

end









