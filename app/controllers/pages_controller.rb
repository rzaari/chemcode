class PagesController < ApplicationController

	def home #we want a home action
		@microposts = Micropost.all 
	end

	def about
	end
	

end
