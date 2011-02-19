class AddAvailableToOffers < ActiveRecord::Migration
  def self.up
    add_column :offers, :available, :boolean
  end

  def self.down
    remove_column :offers, :available
  end
end
