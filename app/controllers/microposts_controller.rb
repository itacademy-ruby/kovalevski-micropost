class MicropostsController < ApplicationController
  before_filter :signed_in_user

  def index
    @microposts = Micropost.paginate(:page => params[:page], :per_page => 30)
  end
  def show
    @micropost = Micropost.find(params[:user_id])  
  end
  def new
    @micropost = Micropost.new
  end
  def create
    @micropost = current_user.microposts.build(params[:micropost])
	#@micropost = Micropost.new(params[:micropost])
	respond_to do |format|
      if @micropost.save
        flash[:success] = "Micropost created!"
        redirect_to "user/show"
        #format.html { redirect_to "show", notice: 'Post was created.' }
        #format.json { render json: @microposts, status: :created, location: @user }
      else
        render 'static_pages/home'
        #format.html { render action: "new" }
        #format.json { render json: @micropost.errors, status: :unprocessable_entity }
      end
  end
  end
end
