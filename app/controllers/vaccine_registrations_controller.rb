class RegistrationsController < ApplicationController
  before_action :registration_region
  before_action :set_form_dropdown_data

  def show; end
  
  def new
    @registration = Registration.new
  end

  private

  def registration_region
    @registration_region ||= Region.find(params[:region_id])
  end

  def set_form_dropdown_data
    @registration_types = RegistrationType.all
    @all_states = State.all
    @qualifying_health_conditions = StatesQualifyingHealthCondition.where(state_id: registration_region.state_id)
  end
end