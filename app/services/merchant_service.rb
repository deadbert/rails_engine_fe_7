class MerchantService

  def conn 
    Faraday.new(url: "http://localhost:3000/api/v1/")
  end

  def get_url(url)
    data = conn.get(url)
    JSON.parse(data.body, symbolize_names: true)
  end

  def merchants
    get_url("merchants")
  end

  def merchant(id)
    get_url("merchants/#{id}")
  end

  def items(id)
    get_url("merchants/#{id}/items")
  end
end