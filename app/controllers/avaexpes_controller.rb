class AvaexpesController < ApplicationController
  def create
    @experience = User.find(params[:experience_id])
    @experience.avaexpe.attach(params[:avaexpe])
    redirect_to(user_path(@experience))
  end
end
