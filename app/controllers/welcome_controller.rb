class WelcomeController < ApplicationController

  def about
  end

  def cities
    @cities = {
      'oceania' => %w(adelaide brisbane canberra melbourne perth sydney tasmania),
      'north america' => [],
      'europe' => []
           }

  end

  def contact
  end

  def press
  end

  def select
  end

end
