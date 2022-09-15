class Admin::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to request.referer
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to admin_item_path
    end
  end
  
  private
  
  def genre_params
    params.require(:item).permit(:name, :explanation, :without_tax, :sold_out)
  end
  
end
