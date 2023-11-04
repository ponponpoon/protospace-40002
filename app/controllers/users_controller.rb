class UsersController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    if @user
      @prototypes = @user.prototypes
    else
      # ユーザーが存在しない場合の処理
      flash[:alert] = "指定されたユーザーは存在しません。"
      redirect_to root_path # 例: ルートページにリダイレクトする
    end
  end
end
