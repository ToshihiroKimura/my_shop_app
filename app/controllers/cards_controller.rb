class CardsController < ApplicationController

  require "payjp"

  def new
    # @user = User.find(params[:id])
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    customer = Payjp::Customer.create(card: params['payjp-token'],metadata: {user_id: current_user.id})
    @card = Card.new(customer_id: customer.id, card_id: customer.default_card, user_id: current_user.id,)
    # if @card.save
    #   redirect_to action: "show"
    # else
    #   redirect_to action: "pay"
    end
  end
end
