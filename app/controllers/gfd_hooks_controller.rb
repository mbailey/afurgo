class GfdHooksController < ApplicationController
  protect_from_forgery :except => :animal_updated

  def animal_updated
    offer = Offer.find_by_gfd_token params[:gfd_token]
    offer.update_attributes params.slice('available')
    render :nothing => true, :status => 200
  end

end
