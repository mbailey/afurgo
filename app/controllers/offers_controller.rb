class OffersController < ApplicationController

  before_filter :get_city

  # include ::HTTParty
  # base_uri 'http://www.goodfordogs.org'
  # format :json

  def show
    # @offer = HTTParty.get('http://gfd.local/latest/1.json')
    @offer = Offer.find(params[:id])
    @city = @offer.city
    # TODO Show something if city not found
  end

  def redir
    @offer = Offer.city(@city).first
    redirect_to @offer
  end

  private

    def get_city
      if params[:city]
        @city = cookies.permanent[:city] = params[:city]
      elsif cookies[:city]
        @city = cookies[:city]
      end
    end
end

class Hash
  def method_missing(key)
    self[key.to_s] || super
  end
end

