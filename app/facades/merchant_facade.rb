class MerchantFacade

  def all_merchants
    merchants = MerchantService.new.merchants[:data]
    merchants.map do |merchant|
      Merchant.new(merchant)
    end
  end
end