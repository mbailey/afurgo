class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_city

  REGIONS = ['oceania', 'north america', 'europe']
  COUNTRIES = {'oceania' => ['melbourne', 'canberra', 'tasmania', 'perth']}


  def get_city
    if self.class.to_s.split("::").first=="Admin"
      @city = 'space'
    elsif params[:city]
      @city = params[:city]
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
