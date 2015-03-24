class StaticPagesController < ApplicationController
  def home
  	@posts_recent_five = Post.last(5).reverse
  	@posts_recent_ten = Post.last(10).reverse
  	@posts = Post.all
  end

  def about
  	@bios_last = Bio.last
  end

  def contact
  end
end
