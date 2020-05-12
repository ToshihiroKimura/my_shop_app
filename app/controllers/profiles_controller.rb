class ProfilesController < ApplicationController
  def new
    # @user = User.find(params[:id])
    @profile = Profile.new
  end
  
  def create
    redirect_to new_address_path
  end
end
