class StaticPagesController < ApplicationController
  def home
  	@posts = Post.all[0..4]
  end

  def about
  end

  def contact
  end
end
