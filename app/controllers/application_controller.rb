class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper


  def mobile_device?
    request.user_agent =~ /Mobile|webOS/
  end

  
  def respond_to_format(con, cons)
  	respond_to do |format|
	  	flash[:success] = "#{con} was successfully destroyed"
	  	format.html { redirect_to cons }
	  	format.json { head :no_content }
  	end
  end
  
end
