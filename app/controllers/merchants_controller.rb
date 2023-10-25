class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.new.all_merchants
  end

  def show
    @merchant = MerchantFacade.new.merchant(params[:id])
    @items = MerchantFacade.new.items(params[:id])
  end
end