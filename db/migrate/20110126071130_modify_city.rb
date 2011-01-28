class ModifyCity < ActiveRecord::Migration
  def self.up
    add_column :offers, :city_id, :integer
    remove_column :offers, :city
  end

  def self.down
    remove_column :offers, :city_id
    add_column :offers, :city, :string
  end
end
