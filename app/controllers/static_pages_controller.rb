class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost = current_user.microposts.build if signed_in?
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
    render layout: 'home'

  end

  def feed
    # Это предварительное решение. 
    microposts
  end

  def about
  end

  

  def help
  end
end