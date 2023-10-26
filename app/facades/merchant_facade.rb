class MerchantFacade

  def all_merchants
    merchants = MerchantService.new.merchants[:data]
    merchants.map do |merchant|
      Merchant.new(merchant)
    end
  end

  def merchant(id)
    merchant = MerchantService.new.merchant(id)[:data]
    Merchant.new(merchant)
  end

  def items(id)
    items = MerchantService.new.items(id)[:data]
    items.map do |item|
      Item.new(item)
    end
  end

  def merchants_by_name(keyword)
    merchants = MerchantService.new.merchants_by_name(keyword)[:data]
    merchants.map do |merchant|
      Merchant.new(merchant)
    end
  end
end