class ImagesController < ApplicationController




	private
	
		def images_params
			params.require(:images).permit(:id, :photo, :post_id, :caption)
		end

end