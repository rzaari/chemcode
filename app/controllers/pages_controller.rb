class PagesController < ApplicationController

	def home #we want a home action
    @allposts = Micropost.all.order('created_at DESC')
    @micropost = current_user.microposts.build if current_user
    
	end

	def about
	end

	def submit
	@micropost = current_user.microposts.build if current_user
	end
	

end
