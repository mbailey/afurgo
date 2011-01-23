class OffersController < ApplicationController
  include ::HTTParty
  base_uri 'http://gfd.local'
  format :json
  def show
    @offer = HTTParty.get('http://gfd.local/latest/1.json')
    @offer = Offer.find(1);
  end
end

class Hash
  def method_missing(key)
    self[key.to_s] || super
  end
end

