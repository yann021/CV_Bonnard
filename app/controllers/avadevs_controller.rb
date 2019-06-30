class AvadevsController < ApplicationController
  def create
    @developement = User.find(params[:developement_id])
    @developement.avadev.attach(params[:avadev])
    redirect_to(user_path(@developement))
  end
end
