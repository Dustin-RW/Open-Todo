class Api::ListsController < ApiController

  before_action :authenticated?

  def create

    user = User.find(params[:user_id])

    list = List.new(list_params)

    if list.save
      render json: list
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end

  end

  def destroy

    user = User.find(params[:user_id])

    begin
      list = List.find(params[:id])
      list.destroy

      render json: {}, status: :no_content, :message => "Successful deletion of #{user.full_name}"

    rescue ActiveRecord::RecordNotFound

      render :json => {}, :status => :not_found
    end

  end


  private

  def list_params
    params.require(:list).permit(:name, :permissions)
  end
end
