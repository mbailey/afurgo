class Offer < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :kind
  validates_inclusion_of :sex, :in => %w(m f)
  validates_inclusion_of :kind, :in => %w(dog)

  scope :city, lambda { |city| where("city = ?", city) }

  def to_param
    "#{self.id}-#{self.name.parameterize}-the-#{self.kind.parameterize}-in-#{self.city.parameterize}"
  end

end
