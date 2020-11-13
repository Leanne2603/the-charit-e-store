class ItemsController < ApplicationController
  skip_before_action :verify_authenticity_token
  # before_action :authenticate_user!
  before_action :set_item, only: [:show, :update, :edit, :destroy, :buy]
  before_action :set_appeals

  def index
      @items = Item.all
  end

  def new
      @item = Item.new
  end
  
  def create
      item = Item.create!(item_params)
      redirect_to item_path(item)
  end
  
  def edit
  end
  
  def update
      @item.update(item_params)
      redirect_to items_path
  end
  
  def show
  end

  def destroy
      @item.destroy
      redirect_to items_path
  end

  def buy
    Stripe.api_key = ENV['STRIPE_API_KEY']
    session = Stripe::Checkout::Session.create({
      payment_method_types: ['card'], 
      mode: 'payment',
      success_url: success_url(params[:item_id]),
      cancel_url: cancel_url(params[:item_id]),
      line_items: [
        {
          price_data: {
            currency: 'aud',
            product_data: {
              name: @item.name
            },
            unit_amount: (@item.price.to_f * 100).to_i
          },
          quantity: 1
        }
      ]
    })

    render json: session
  end

  def success
    render plain: "Success!"
  end

  def cancel
    render plain: "The transaction was cancelled!"
  end

  private

  def set_item
      @item = Item.find(params[:item_id])
  end

  def set_appeals
    @appeals = Appeal.all
  end

  def item_params
      params.require(:item).permit(:description, :name, :price, :available, :image, appeal_ids: [])
  end 
end
