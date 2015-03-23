class ImagesController < ApplicationController






	private
	
		def images_params
			params.require(:images).permit(:photo, :post_id)
		end

end