class PotterService 
  def get_house(key)
    get_json('houses/5a05e2b252f721a3cf2ea33f')
  end

  def get_member(member)
    get_json()
  end
  
  private

  def conn
    Faraday.new(url: "https://www.potterapi.com/v1/") do |f|
      f.adapter Faraday.default_adapter
      f.params[:access_token] = ENV[:access_token] 
    end
  end
  
  def get_json(uri)
    response = conn.get(uri)
    JSON.parse(response.body, symbolize_names: true)
  end

end
# https://www.potterapi.com/v1/houses/5a05e2b252f721a3cf2ea33f?key=$2a$10$voN3YahlYnnnPXz9Pc3OOecHTDuD9AaWfDD3KQbtNVTbYUlYFOXZi
