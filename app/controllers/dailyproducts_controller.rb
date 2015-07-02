class DailyproductsController < ApplicationController

 def index
    @dailyproducts = Dailyproduct.all
  end

end
