class SessionsController < ApplicationController
  def create
    user = User.find(params[:id])
    sessions[:user_id] = user.id
    render json: user
  end

  def destroy
    session.delete :user_id
    head :no_content, status: 204
  end
end