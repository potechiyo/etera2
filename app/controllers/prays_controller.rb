class PraysController < ApplicationController
  before_action :authenticate_user
  
  def create
    @pray = Pray.new(user_id: @current_user.id, post_id: params[:post_id])
    @pray.save
    
    redirect_to("/posts/#{params[:post_id]}")
  end
  
  def destroy
    @pray = Pray.find_by(user_id: @current_user.id, post_id: params[:post_id])
    @pray.destroy
    redirect_to("/posts/#{params[:post_id]}")
  end
  
end
