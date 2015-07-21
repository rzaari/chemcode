class MicropostsController < ApplicationController

before_action :logged_in_user, only: [:create]

 def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Code sucessfully submitted."
      redirect_to root_url
    else
      flash[:error] = "Error submitting code!"
      redirect_to submit_path
    end
  end

  private

    def micropost_params
      params.require(:micropost).permit(:heading, :content)
    end

end
