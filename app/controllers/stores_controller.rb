class StoresController < ApplicationController

    def index
        @stores = Store.all
    end

    def show
        @store = find_store
    end

    def new
        @store = Store.new
    end

    def create
        @store = Store.create(store_params(:name, :city))
        redirect_to store_path(@store)
    end

    def edit       
        find_store
    end     

    def update      
        find_store         
        @store.update(store_params(:name, :city))        
        redirect_to store_path(@store)    
    end

    private

    def store_params(*args)
        params.require(:store).permit(*args)
    end

    def find_store
        @store = Store.find(params[:id])
    end

end
