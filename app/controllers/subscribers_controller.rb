class SubscribersController < ApplicationController
	before_action :set_subscriber, only: [:show, :destroy]

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
        flash[:success] = 'Successfully subscribed'
        format.html { redirect_to @subscriber }
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


end
