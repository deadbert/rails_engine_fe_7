class WelcomeController < ApplicationController

  def index
    @merchants = MerchantFacade.new.merchants_by_name(params[:keyword])
    require 'pry';binding.pry
  end
end