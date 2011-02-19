class AddGfdTokenToOffer < ActiveRecord::Migration
  def self.up
    add_column :offers, :gfd_token, :string
  end

  def self.down
    remove_column :offers, :gfd_token
  end
end
