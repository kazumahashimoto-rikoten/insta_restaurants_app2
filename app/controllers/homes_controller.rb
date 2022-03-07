class HomesController < ApplicationController
  def top
    @station = "大崎"
    @restaurants = TopRestaurant.where(station: "大崎").order(updated_at: "DESC")
  end

  def station
    @station = params[:station]
    @restaurants = TopRestaurant.where(station: @station).order(updated_at: "DESC")
    @top_restaurants = @restaurants.first(9).each_slice(3).to_a
  end
end
