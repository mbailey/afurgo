class Admin::GfdController < Admin::BaseController
  def long_termers
    city = params[:city] || 'melbourne'  
    @dogs = GFD.available(city)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cities }
    end
  end

end
