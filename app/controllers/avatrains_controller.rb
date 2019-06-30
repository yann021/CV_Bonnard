class AvatrainsController < ApplicationController
  def create
    @training = User.find(params[:training_id])
    @training.avatrain.attach(params[:avatrain])
    redirect_to(user_path(@training))
  end
end
