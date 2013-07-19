class StaticPagesController < ApplicationController
  def home
    @micropost = current_user.microposts.build if signed_in?
    render layout: 'home'
  end

  def about
  end

  def microposts
  	 @microposts = @user.microposts
  end

  def help
  end
end