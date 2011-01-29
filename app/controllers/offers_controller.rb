class OffersController < ApplicationController

  def show
    @offer = Offer.find(params[:id])
    @city = @offer.city
    render :layout => 'dog'
    # TODO Show something if city not found
  end

  def redir
    @offer = Offer.city(@city).last
    if @offer
      cookies.permanent[:city] = @city
      redirect_to @offer
    else
      cookies.permanent[:city] = @city unless cookies.permanent[:city]
      redirect_to cities_url
    end   
  end

  def past
    @offers = Offer.city(@city).order("id DESC").limit(5)
  end

  def more
    # Change to city?
    @offers = GFD.available('vic')
  end

end
