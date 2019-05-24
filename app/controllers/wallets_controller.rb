class WalletController < ApplicationController
  before_action :set_wallet, only: [:show]

  def show
  end

  def tell_us_a_bit_more
    @wallet = Wallet.new
  end

  def recommendations
    @wallet = Wallet.new(wallet_params)
  end

  private

  def set_wallet
    @wallet = Wallet.find(params[:id])
  end

  def wallet_params
    params.require(:wallet).permit(:daily_income, :savings, :fixed_cost)
  end
end
