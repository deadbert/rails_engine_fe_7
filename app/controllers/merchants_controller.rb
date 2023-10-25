class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.new.all_merchants
    require 'pry';binding.pry
  end
end