class VendingMachineController < ApplicationController
  def new
  end

  def create
  end

  def show
    redirect_to '/'
  end

  def index
    @drinks     = Drink.all
    @currencies = Currency.all
  end
  
  def buy
    coke_stock, diet_coke_stock, tea_stock, buy_target = get_all_drink_stock
    
    system "bin/VendingMachine 5 #{coke_stock} #{diet_coke_stock} #{tea_stock} 100 #{buy_target}"
  end

  private
    def drink_params
      params[:drink].permit(:drink_name, :drink_type, :stock, :discount)
    end

    def get_all_drink_stock
      drink = Drink.new(drink_params)
      drinks = Drink.all

      drinks.each do |drink|
        @coke_stock      = drink.stock if drink.drink_type == 1
        @diet_coke_stock = drink.stock if drink.drink_type == 2
        @tea_stock       = drink.stock if drink.drink_type == 3
      end
      return @coke_stock, @diet_coke_stock, @tea_stock, drink.drink_type
    end
end
