class OpinionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tweet = Opinion.new
    timeline
  end

  def new; end

  def create
    @tweet = current_user.opinions.new(opinion_params)
    if @tweet.save
      flash[:success] = 'Tweet added'

    else

      flash[:danger] = 'Something went wrong!!, Try again'
    end
    redirect_to timeline_path
  end

  def show; end

  private

  def opinion_params
    params.require(:opinion).permit(:text)
  end

  def timeline
    @user = User.includes(:followers, :following).all
    @posts = Opinion.includes(:author).all
  end
end
