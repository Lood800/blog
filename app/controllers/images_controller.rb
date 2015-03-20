class ImagesController < ApplicationController

	def create
		@image = Image.new(image_params)
		if @image.save
			flash[:success] = "Image created!"
		else
			flash[:danger] = "Image not created!"
		end
  end

	def destroy
    @image.destroy
    flash[:success] = "Image deleted"
  end


  private
	
		def image_params
			params.require(:image).permit(:photo)
		end

end
