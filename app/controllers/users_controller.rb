class UsersController < ActionController::API

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.find_or_create_by(user_params)
    render json: @user.to_json
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user = User.update(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:display_name, :profile_picture, :classification)
  end

end
