class GFD
  require 'httparty'
  include ::HTTParty
  base_uri 'http://gfd.local'
  format :json 

  # @offer = HTTParty.get('http://gfd.local/latest/1.json')
  
  def self.available(city, kind='dogs')
    get("/photos/#{kind}/#{city}.json")
  end 
end
