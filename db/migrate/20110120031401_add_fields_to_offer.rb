class AddFieldsToOffer < ActiveRecord::Migration
  def self.up
    add_column :offers, :lede, :text
  end

  def self.down
    remove_column :offers, :lede
  end
end
