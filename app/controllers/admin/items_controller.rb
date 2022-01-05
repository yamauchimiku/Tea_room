class Admin::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new
    @item.save
  end

  def show
  end

  def edit
  end

  def update
  end

  # itemのストロングパラメータ
  private
  def item_params
    params.require(:item).permit(:image, :name, :introduction, :price)
  end
end
