class HomesController < ApplicationController
  def top
    @station = "大崎"
    @restaurants = TopRestaurant.where(station: "大崎").order(updated_at: "DESC")
  end
end
