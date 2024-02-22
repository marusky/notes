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
    @item = Item.create(title: params[:item][:title], expected_cost: params[:item][:expected_cost], is_done: params[:item][:is_done])

    redirect_to @item
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    @item.update(title: params[:item][:title], expected_cost: params[:item][:expected_cost], is_done: params[:item][:is_done])

    redirect_to @item
  end

  def destroy
    @item = Item.find(params[:id])

    @item.delete

    redirect_to items_url
  end
end