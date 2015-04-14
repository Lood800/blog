class DetailsController < ApplicationController
	before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user, only: [:index, :edit]

	def index
		@details = Detail.all
	end

	def show

	end

  def edit
    
  end

  def update
    respond_to do |format|
      if @detail.update(detail_params)
        flash[:success] = 'Contact page was successfully updated'
        format.html { redirect_to contact_path }
        format.json { render :show, status: :ok, location: contact_path }
      else
        format.html { render :edit }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
  end

	private

		def set_post
    	@detail = Detail.find(params[:id])
  	end

		def detail_params
			params.require(:detail).permit(:name, :phone, :email)
		end

    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

end
