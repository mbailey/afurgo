class GFD
  require 'httparty'
  include ::HTTParty
  base_uri 'http://www.goodfordogs.org'
  format :json 

  # @offer = HTTParty.get('http://gfd.local/latest/1.json')
  
  def self.available(city, kind='dogs')
    get("/photos/#{kind}/#{self.city_to_state(city)}.json")
  end 

  def self.city_to_state(city)
    cities = {
      'qld' => ['brisbane'],
      'wa' => ['perth'],
      'sa' => ['adelaide'],
      'nsw' => ['sydney'],
      'vic' => ['melbourne'],
      'act' => ['canberra'],
      'tas' => %w(tasmania hobart)
    }
    cities.detect{ |k,v| v.include? city.to_s.downcase }.first
  end

end
