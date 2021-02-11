class UsersController < ApplicationController
  before_action :authenticate_user!
  def edit
    puts "\n\n\n hola \n\n\n"
  end
  def update
    current_user.update(user_params)

    redirect_back(fallback_location: root_path)
  end
  def user_params
    params.require(:user).permit(:avatar)
  end
end
