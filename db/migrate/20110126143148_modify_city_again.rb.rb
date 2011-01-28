class ModifyCityAgain < ActiveRecord::Migration
  def self.up
    remove_column :offers, :city_id
    add_column :offers, :city, :string
  end

  def self.down
    add_column :offers, :city_id, :integer
    remove_column :offers, :city
  end
end
