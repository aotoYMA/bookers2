class UsersController < ApplicationController

  def show
    @user = User.all
    @book = @user.book
  end

  def update
    @user = ユーザーの取得
    @user.ユーザーのアップデート
    redirect_to ユーザーの詳細ページへのパス
  end

  def create
    @user = User.new(user_params)
    if @User.save
      flash[:login] = "ログインに成功しました"
      redirect_to user_path(user.id)
    else
      flash[:logout] = "ログアウトしました"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

  def edit
  end
end
