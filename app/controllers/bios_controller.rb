class BiosController < ApplicationController

def index
  @bios = Bio.all
end

def show
  @bio = Bio.find(params[:id])
end

def new 
	@bio = Bio.new
end

def edit
	 @bio = Bio.find(params[:id])
end


def create
  @bio = Bio.new(bio_params)
  respond_to do |format|
    if @bio.save
      flash[:success] = 'Post was successfully created'
      format.html { redirect_to about_path }
      format.json { render :show, status: :created, location: @bio }
    else
      format.html { render :new }
      format.json { render json: @bio.errors, status: :unprocessable_entity }
    end
  end
end

def update
	@bio = Bio.find(params[:id])
  respond_to do |format|
    if @bio.update(bio_params)
      flash[:success] = 'Post was successfully updated'
      format.html { redirect_to contact_path }
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


end
