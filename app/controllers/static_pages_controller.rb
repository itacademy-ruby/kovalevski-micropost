class StaticPagesController < ApplicationController
  

  def home
   if signed_in?
      @micropost = Micropost.create #current_user.microposts.build if signed_in?
      
      @feed_items = current_user.feed.paginate(page: params[:page])
   end
    render layout: 'home'

  end

  

  def about
  end

  

  def help
  end
end