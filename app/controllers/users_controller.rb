class UsersController < ApplicationController
  def show
    profile
    end

  def new
    @user = User.new
    
  end
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "User sign up sucessful!"
      redirect_to timeline_path
    else
      render 'new'
    end
  end

  def edit
  end

 

  private

    def user_params
      params.require(:user).permit(:fullName,:photo,:coverimage,:username,:password,
                                   :password_confirmation)
    end
    
    def profile
      @user = User.includes([:followers, :following]).find(params[:id])
    end

end
