class UsersController < ApplicationController
  def index
    @users = User.page(params[:page]).per(3).reverse_order
  end

  def show
    @user = User.find(params[:id])

    if @user.is_folklore
      @successors = @user.successor_user.reverse_order
    end

    if !@user.is_folklore
      @reccomends = User.joins(
        "INNER JOIN user_categories ON user_categories.user_id = users.id
        INNER JOIN categories ON categories.id = user_categories.category_id"
      ).where.not(id: @user.id).select("users.*, categories.name AS category_name").limit(3)
    end
  end

  def genre
    @user = User.find(params[:id])
    @categories = Category.all

    if params[:category_id] == 'all'
      @folklores = User.joins(
        "INNER JOIN user_categories ON user_categories.user_id = users.id
        INNER JOIN categories ON categories.id = user_categories.category_id"
      ).where.not(id: @user.id).select("users.*, categories.name AS category_name")
    else
      @folklores = User.joins(
        "INNER JOIN user_categories ON user_categories.user_id = users.id
        INNER JOIN categories ON categories.id = user_categories.category_id"
      ).where.not(id: @user.id).where(categories: { id: params[:category_id] }
      ).select("users.*, categories.name AS category_name")
    end
  end

  def edit
    @user = User.find(params[:id])
    @categories = Category.all
  end

  def update
    @user = User.find(params[:id])

    @user.update(user_params)
    UserCategory.create(user_id: params[:id], category_id: params[:category])
    redirect_to user_path(@user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :profile, :profile_image)
  end
end
