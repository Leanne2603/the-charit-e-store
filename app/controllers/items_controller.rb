class ItemsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:buy]
  before_action :authenticate_user!
  before_action :set_item, only: [:show, :update, :edit, :destroy, :buy]
  before_action :set_appeals

  def index
      @items = Item.all
  end

  def new
      @item = Item.new
  end
  
  def create
      @item = Item.new(item_params)
        if @item.save
          redirect_to item_path(@item)
        else
          flash[:notice] = 'Fields must not be blank!'
          redirect_to items_new_path
        end
  end
  
  def edit
  end
  
  def update
      @item.update(item_params)
      if @item.update(item_params)
        redirect_to items_path
      else
        flash[:notice] = 'Fields must not be blank. Your changes have not been saved!'
        redirect_to item_path
      end
  end
  
  def show
  end

  def destroy
      flash[:notice] = 'Item has been successfully deleted'
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
    flash[:notice] = 'Thank you for your donation. Your payment has been successfully processed.'
    redirect_to items_path 
  end

  def cancel
    flash[:notice] = 'Unfortunately we were not able to process your payment at this time. Please try again'
    redirect_to item_path(item)
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
