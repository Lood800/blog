class SubscribersController < ApplicationController
  before_action :logged_in_user, only: [:index]


	def show
    @subscriber = Subscriber.find_by(unsubscribe_key: params[:unsubscribe_key])
	end


	def index
		@subscribers = Subscriber.all
	end

  def new
  	@subscriber = Subscriber.new
  end

 	def create
    @subscriber = Subscriber.new(subscriber_params)
    @subscriber.unsubscribe_key = SecureRandom.urlsafe_base64
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
    if params[:id].length > 20
      @subscriber = Subscriber.find_by(unsubscribe_key: params[:id])
      destroy_message
    else
      if logged_in?
        @subscriber = Subscriber.find_by(id: params[:id])
        destroy_message
      else
        flash[:danger] = "You are not allowed to unsubscribe this subscriber"
        redirect_to root_path
      end
    end
  end

  private

  def subscriber_params
  	params.require(:subscriber).permit(:name, :email, :unsubscribe_key)
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  def destroy_message
    @subscriber.destroy
    flash[:success] = 'Subscriber has been successfully unsubscribed'
    redirect_to root_path
  end

end
