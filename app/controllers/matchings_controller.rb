class MatchingsController < ApplicationController
  def index
    @user = User.find(params[:user_id])

    user_id = "successor_id"
    if @user.is_folklore
      user_id = "folklore_id"
    end

    @matches = Matching.joins(
      "INNER JOIN users ON users.id = matchings.folklore_id
      INNER JOIN user_categories ON user_categories.user_id = users.id
      INNER JOIN categories ON categories.id = user_categories.category_id"
    ).where(approve: true).select("users.*, categories.name AS category_name")
  end

  def new
    @user = User.find(params[:user_id])
    @matching = Matching.new
  end

  def confirm
    @user = User.find(params[:user_id])
    @successor = User.find(params[:successor_id])
  end

  def approve
    current_user.approve(params[:user_id], params[:successor_id])
    redirect_to request.referer
  end

  def reject
    current_user.reject(params[:user_id], params[:successor_id])
    redirect_to request.referer
  end

  def create
    current_user.request(params[:user_id], params[:matching])
    redirect_to request.referer
  end

  def destroy
    current_user.cancel(params[:user_id])
    redirect_to request.referer
  end
end
