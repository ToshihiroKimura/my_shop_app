class AddressesController < ApplicationController
  def new
    # @user = User.find(params[:id])
    @address = Address.new
  end
end
