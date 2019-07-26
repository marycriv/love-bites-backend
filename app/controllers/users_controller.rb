class UsersController < ActionController::API

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  private

  def user_params
    params.require(:user).permit(:display_name, :profile_picture, :classification)
  end

end
