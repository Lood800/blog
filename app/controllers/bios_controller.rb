class BiosController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit]


def index
  @bios = Bio.all
end

def show
  @bio = Bio.find(params[:id])
end

def edit
	 @bio = Bio.find(params[:id])
end


def update
	@bio = Bio.find(params[:id])
  respond_to do |format|
    if @bio.update(bio_params)
      flash[:success] = 'About page was successfully updated'
      format.html { redirect_to about_path }
      format.json { render :show, status: :ok, location: @bio }
    else
      format.html { render :edit }
      format.json { render json: @bio.errors, status: :unprocessable_entity }
    end
  end
end





private
	
def bio_params
	params.require(:bio).permit(:name, :info, :body, :profile_pic)
end

def logged_in_user
  unless logged_in?
    flash[:danger] = "Please log in."
    redirect_to login_url
  end
end


end
