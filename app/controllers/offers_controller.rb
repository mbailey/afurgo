class OffersController < ApplicationController


  # include ::HTTParty
  # base_uri 'http://www.goodfordogs.org'
  # format :json

  def show
    # @offer = HTTParty.get('http://gfd.local/latest/1.json')
    @offer = Offer.find(params[:id])
    @city = @offer.city
    render :layout => 'dog'
    # TODO Show something if city not found
  end

  def redir
    @offer = Offer.city(@city).last
    if @offer
      redirect_to @offer
    else
      redirect_to cities_url
    end   
  end

  def past
    @offers = Offer.city(@city).order("id DESC").limit(5)
  end

end
