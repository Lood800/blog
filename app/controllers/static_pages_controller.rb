class StaticPagesController < ApplicationController
  def home
    if mobile_device?
    else
    	@posts_recent_five = Post.last(5).reverse
    	@posts_recent_ten = Post.last(10).reverse
    	@posts = Post.all
    end
  end

  def about
  	@bios_last = Bio.last
  end

  def contact
    @detail_last = Detail.last
  end

end

