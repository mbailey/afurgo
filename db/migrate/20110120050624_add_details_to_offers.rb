class AddDetailsToOffers < ActiveRecord::Migration
  def self.up
    add_column :offers, :details, :text
  end

  def self.down
    remove_column :offers, :details
  end
end
