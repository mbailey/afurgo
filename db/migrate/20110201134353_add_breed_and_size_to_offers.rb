class AddBreedAndSizeToOffers < ActiveRecord::Migration
  def self.up
    add_column :offers, :breed, :string
    add_column :offers, :size, :string
  end

  def self.down
    remove_column :offers, :size
    remove_column :offers, :breed
  end
end
