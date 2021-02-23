class RegistrationFormsController < ApplicationController
  def index
    @registration_forms = RegistrationForm.all
  end
end