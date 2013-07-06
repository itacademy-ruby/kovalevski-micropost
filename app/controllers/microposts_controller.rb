class MicropostsController < ApplicationController
  def index
    @Microposts = Micropost.all
  end
  def show
    @Micropost = Micropost.find(params[:user_id])  
  end
  def new
    @micropost = Micropost.new
  end
  def create
	@micropost = Micropost.new(params[:micropost])
	respond_to do |format|
      if @micropost.save
        format.html { redirect_to @micropost, notice: 'Post was created.' }
        format.json { render json: @micropost, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @micropost.errors, status: :unprocessable_entity }
      end
  end
  end
end
