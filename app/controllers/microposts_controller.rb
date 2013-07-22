class MicropostsController < ApplicationController
  before_filter :signed_in_user
  before_filter :correct_user,   only: :destroy

  def destroy
    @micropost.destroy
    redirect_to root_url
  end

  def index
    @microposts = Micropost.paginate(:page => params[:page], :per_page => 30)
  end
  def show
    @micropost = Micropost.find(params[:user_id])  
  end
  def new
    @micropost = Micropost.new
    redirect_to root_path
  end
  def create
    @micropost = current_user.microposts.build(params[:micropost])
    
	
	respond_to do |format|
      if @micropost.save
        flash[:success] = "Micropost created!"

        redirect_to root_url
        #format.html { redirect_to "show", notice: 'Post was created.' }
        #format.json { render json: @microposts, status: :created, location: @user }
      else
        render action: "new"  #'static_pages/home'
        #format.html { render action: "new" }
        #format.json { render json: @micropost.errors, status: :unprocessable_entity }
      end
  end
  end
   
  private

    def correct_user
      @micropost = current_user.microposts.find_by_id(params[:id])
      redirect_to root_url if @micropost.nil?
    end

end
