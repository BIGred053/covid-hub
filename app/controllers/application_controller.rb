class ApplicationController < ActionController::Base
  before_action :protect_against_forgery
  before_action :authenticate_user!
end
