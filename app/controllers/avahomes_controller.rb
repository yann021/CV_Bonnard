class AvahomesController < ApplicationController
  def create
    @home = Home.find(params[:home_id])
    @home.avahome.attach(params[:avahome])
    redirect_to(user_path(@home))
  end
end
