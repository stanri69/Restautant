class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def edit
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private

  def item_params
    params.require(:item).permit(:type_dish, :name, :description, :price)
  end
end
