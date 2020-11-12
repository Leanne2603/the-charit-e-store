class ItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item, only: [:show, :update, :edit, :destroy]
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
