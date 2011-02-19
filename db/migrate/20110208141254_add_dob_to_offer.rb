class AddDobToOffer < ActiveRecord::Migration
  def self.up
    add_column :offers, :dob, :datetime
  end

  def self.down
    remove_column :offers, :dob
  end
end
