class WelcomeController < ApplicationController

    CITIES = {
      'oceania' => %w(adelaide brisbane canberra melbourne perth sydney tasmania),
      'north america' => [],
      'europe' => []
           }


  def about
  end

  def cities
    @cities = CITIES
  end

  def select
    @cities = CITIES
  end

  def contact
  end

  def press
  end


end
