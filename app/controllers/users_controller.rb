class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    end

  def new
    @user = User.new
    
  end
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash.now[:success] = "User sign up sucessful!"
      redirect_to @user
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
    

end
