class Offer < ActiveRecord::Base

  scope :city, lambda { |city| where("city = ?", city) }

  def to_param
    "#{self.id}-#{self.name.parameterize}-the-#{self.kind.parameterize}-in-#{self.city.parameterize}"
  end

end
