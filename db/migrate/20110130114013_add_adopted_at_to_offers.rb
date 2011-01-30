class AddAdoptedAtToOffers < ActiveRecord::Migration
  def self.up
    add_column :offers, :adopted_at, :datetime
  end

  def self.down
    remove_column :offers, :adopted_at
  end
end
