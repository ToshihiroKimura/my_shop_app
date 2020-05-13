class AddressesController < ApplicationController
  def new
    # @user = User.find(params[:id])
    @address = Address.new
  end
  def create
    redirect_to root_path
  end
end
