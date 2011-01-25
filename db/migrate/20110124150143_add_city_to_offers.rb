class AddCityToOffers < ActiveRecord::Migration
  def self.up
    add_column :offers, :city, :string
  end

  def self.down
    remove_column :offers, :city
  end
end
