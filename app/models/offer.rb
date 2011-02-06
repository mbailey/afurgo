class Offer < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :kind
  validates_inclusion_of :sex, :in => %w(male female)
  validates_inclusion_of :kind, :in => %w(dog)

  scope :city, lambda { |city| where("city = ?", city) }
  scope :approved, where("approved != 0 and approved < Now()")

  def to_param
    "#{self.id}-#{self.name.parameterize}-the-#{self.kind.parameterize}-in-#{self.city.parameterize}"
  end

  def days_available
    return '?' if first_seen.blank?
    end_time = adopted_at || Time.now
    Integer((end_time - first_seen)/86400.0)
  end

  def approve(time = Time.now)
    update_attributes :approved => time
  end

  def fbshare_attributes
    target_attributes = %w( location ae sex breed )
    attributes.select {|k,v| target_attributes.include?(k.to_s) and ! v.blank?}
  end

end
