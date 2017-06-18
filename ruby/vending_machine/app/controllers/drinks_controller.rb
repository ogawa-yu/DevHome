class DrinksController < ApplicationController

    def new
        @drink = Drink.new
    end
    
    def show
        redirect_to '/'
    end
    
    def destroy
        @drink = Drink.new(drink_params_from_key)
        @drink.destroy
        redirect_to '/'
    end

    def edit
        @drink = Drink.new(drink_params_from_key)
    end
    
    def update
        @drink.stock += params[:add_stock]
        @drink.update
    end
    
    def create
        @drink = Drink.new(drink_params)
        @drink.save
        redirect_to '/vending_machine/'
    end
    private
        def drink_params
            params.require(:drink).permit(:drink_name, :drink_type, :stock, :discount)
        end

        def drink_params_from_key
            params[:drink].permit(:drink_name, :drink_type, :stock, :discount)
        end
        
end
