class FolkloresController < ApplicationController
  def new
    @folklore = Folklore.new
  end

  def new_category
    @folklore = Folklore.new(folklore_params)
    @categories = SmallCategory.all
  end

  def new_icon
    @folklore = Folklore.new(folklore_params)
    @category = params[:category]
  end

  def new_confirm
    @folklore = Folklore.new(folklore_params)
    @category = params[:category]
  end

  def create
    @folklore = Folklore.create!(folklore_params)
    @category = SmallCategory.find(params[:category].to_i)

    FolkloreSmallCategory.create!(
      folklore: @folklore,
      small_category: @category
    )

    redirect_to root_path
  end

  def folklore_params
    params.require(:folklore).permit(:email, :password, :user_name, :furigana)
  end
end
