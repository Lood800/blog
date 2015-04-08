class SubscribersController < ApplicationController
	before_action :set_subscriber, only: [:show, :destroy]
  before_action :logged_in_user, only: [:index]


	def show
    
	end


	def index
		@subscribers = Subscriber.all
	end

  def new
  	@subscriber = Subscriber.new
  end

 	def create
    @subscriber = Subscriber.new(subscriber_params)
    @subscriber.name = @subscriber.name.titleize
    respond_to do |format|
      if @subscriber.save
      	SubscriberMailer.welcome(@subscriber).deliver_now
        flash[:success] = 'Successfully subscribed, you will be emailed as soon as there is a new post'
        format.html { redirect_to root_path }
        format.json { render :show, status: :created, location: @subscriber }
      else
        format.html { render :new }
        format.json { render json: @subscriber.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @subscriber.destroy
    respond_to do |format|
      flash[:success] = 'You have been successfully unsubscribed'
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end



  private

  def set_subscriber
    @subscriber = Subscriber.find(params[:id])
  end

  def subscriber_params
  	params.require(:subscriber).permit(:name, :email)
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  

end
