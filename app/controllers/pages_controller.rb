class PagesController < ApplicationController

	def home #we want a home action
    @allposts = Micropost.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 5)
    # @micropost = current_user.microposts.build
    
	end

	def about
	end

	def submit
	@micropost = current_user.microposts.build 
	end
	

end
