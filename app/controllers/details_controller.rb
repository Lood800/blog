class DetailsController < ApplicationController
	before_action :set_post, only: [:show, :edit, :update, :destroy]

	def index
		@details = Detail.all
	end

	def show

	end

	def new
    @detail = Detail.new
  end

  def edit
    
  end

  def create
    @detail = Detail.new(detail_params)
    respond_to do |format|
      if @detail.save
        flash[:success] = 'Contact was successfully created'
        format.html { redirect_to @detail }
        format.json { render :show, status: :created, location: @detail }
      else
        format.html { render :new }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
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

  # def destroy
  #   @detail.destroy
  #   respond_to do |format|
  #     flash[:success] = 'Detail was successfully destroyed'
  #     format.html { redirect_to details_url }
  #     format.json { head :no_content }
  #   end
  # end










	private

		def set_post
    	@detail = Detail.find(params[:id])
  	end

		def detail_params
			params.require(:detail).permit(:name, :phone, :email)
		end

end
