class RegistrationFormsController < ApplicationController
  def index
    @registration_forms = RegistrationForm.all
  end

  def new
    @registration_form = RegistrationForm.new
  end

  def create
    @registration_form = RegistrationForm.new(reg_form_params)

    if @registration_form.save
      # Do some hotwire-y stuff
    else
      render :new
    end
  end

  private

  def reg_form_params
    params
      .require(:registration_form)
      .permit(:locality_id, :name, :active)
      .merge(locality_id: current_user.locality.id)
  end
end
