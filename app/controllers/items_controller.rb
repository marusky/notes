class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)

    redirect_to @item
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    @item.update(item_params)

    redirect_to @item
  end

  def destroy
    @item = Item.find(params[:id])

    @item.delete

    redirect_to items_url
  end

  private

  def item_params
    params.require(:item).permit(:title, :expected_cost, :is_done)
  end
end