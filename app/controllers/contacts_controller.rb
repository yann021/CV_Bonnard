class ContactsController < ApplicationController
  def new
    @contact = contact.new
  end

  def create
    @contact = contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: 'contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_contact
    @contact = contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:email, :object, :description)
  end

end
 