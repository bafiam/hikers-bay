class TimelinesController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: [:edit, :update, :show]

  def index
  end

  def show
  end
end
