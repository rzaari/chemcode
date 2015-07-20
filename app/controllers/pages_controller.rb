class PagesController < ApplicationController

	def home #we want a home action
    @allposts = Micropost.all
    @micropost = current_user.microposts.build if current_user
	end

	def about
	end
	

end
