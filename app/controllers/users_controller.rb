class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_user

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

 def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = 'User was successfully created'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        flash[:success] = 'User was successfully updated'
        format.html { redirect_to users_path }
        format.json { render :show, status: :ok, location: users_path }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      flash[:success] = 'User was successfully destroyed'
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end



  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  def invalid_user
    logger.error "Attempt to access invalid user #{params[:id]}"
    redirect_to root_url
    flash[:danger] = "Invalid user"
  end

end
