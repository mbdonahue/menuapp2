class WelcomeController < ApplicationController
 def index
 @items= Item.all

  @restaurants = Restaurant.where(nil) # creates an anonymous scope
  @restaurants = @restaurants.neighborhood(params[:neighborhood]) if params[:neighborhood].present?
  @restaurants = @restaurants.cuisine(params[:cuisine]) if params[:cuisine].present?
  @restaurants = @restaurants.city(params[:city]) if params[:city].present?
end

    #MyClass.where(params[:first] ? {:column1 => params[:first]} : "column1 IS NOT NULL")
     # .where(params[:second] ? {:column2 => params[:second]} : "column2 IS NOT NULL"

 #if params[:cuisine]==nil
   #   @restaurants = Restaurant.all
   # else
    #@restaurants = Restaurant.where(cuisine: params[:cuisine].titleize)
 #end

end
