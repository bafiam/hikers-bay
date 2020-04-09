class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true, with: :exception
  include SessionsHelper
  # before_action :correct_user, only: [:edit, :update, :show]

end
