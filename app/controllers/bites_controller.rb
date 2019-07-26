class BitesController < ActionController::API

  def index
    @bites = Bite.all
    render json: @bites
  end

  def show
    @bite = Bite.find(params[:id])
    render json: @bite
  end

  def new
    @bite = Bite.new
  end

  def create
    @bite = Bite.find_or_create_by(bite_params)
    render json: @bite
  end

  private

  def bite_params
    params.require(:bite).permit(:biter_id, :bitee_id, :status)
  end

end
