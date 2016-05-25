class Api::ItemsController < ApiController

  before_action :authenticated?
  #before_action :item_authenticated?

  def create
    list = List.find(params[:list_id])

    item = Item.new(item_params)

    if item.save
      render json: item
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end

  end

  private

  def item_params
    params.require(:item).permit(:description)
  end

  def item_authenticated?
    authenticate_or_request_with_http_basic {|description| User.item.where( description: description).present? }
  end

end
