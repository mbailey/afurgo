class AddFirstSeenToOffers < ActiveRecord::Migration
  def self.up
    add_column :offers, :first_seen, :datetime
  end

  def self.down
    remove_column :offers, :first_seen
  end
end
