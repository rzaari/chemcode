class MicropostsController < ApplicationController

before_filter :authorize

 def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Code sucessfully submitted."
      redirect_to root_url
    else
      flash[:warning] = "Error submitting code!"
      redirect_to submit_path
    end
  end

  def index
  @posts = Micropost.all
  if params[:search]
    @posts = Micropost.search(params[:search]).order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
  else
    @posts = Micropost.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 5)
  end
end


  private

    def micropost_params
      params.require(:micropost).permit(:heading, :software, :content)
    end

end
