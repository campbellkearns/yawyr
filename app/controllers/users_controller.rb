class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save #add condition for successful register(sign up)
    render 'new'
  end

  def show
    @user = User.find(params[:id])
  end

  def index
  end



  def edit
  end


  def update
  end

  def destroy
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
