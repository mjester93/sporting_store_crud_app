class ItemsController < ApplicationController

    def index
        @items = Item.all
    end

    def show
        @item = find_item
    end

    def new
        @item = Item.new
    end

    def create
        @item = Item.create(item_params(:name, :price, :sport))
        redirect_to item_path(@item)
    end

    private

    def item_params(*args)
        params.require(:item).permit(*args)
    end

    def find_item
        @item = Item.find(params[:id])
    end
end
