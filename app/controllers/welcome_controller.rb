class WelcomeController < ApplicationController

  def index
    @merchants = MerchantFacade.new.merchants_by_name(params[:keyword])
  end
end