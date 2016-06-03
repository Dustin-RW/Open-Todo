class Api::ItemsController < ApiController

  before_action :authenticated?
  #before_action :item_authenticated?

  def create
    #user = User.find(params[:user_id])

    #user = User.find(params[:user_id])

    list = List.find(params[:list_id])

    item = Item.create(item_params)

    #item.user = User.find(params[:user_id])

    if item.save
      render json: item
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end

  end

  def update

    item = Item.find(params[:id])

    item.list_id = params[:list_id]

    item.user_id = params[:user_id]

    if item.update(item_params)
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity

    end

  end

  private

  def item_params
    params.require(:item).permit(:description, :completed)
  end

  def item_authenticated?
    authenticate_or_request_with_http_basic {|description| User.item.where( description: description).present? }
  end

end
