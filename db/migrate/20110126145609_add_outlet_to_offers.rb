class AddOutletToOffers < ActiveRecord::Migration
  def self.up
    add_column :offers, :outlet_name, :string
    add_column :offers, :address_1, :string
    add_column :offers, :address_2, :string
    add_column :offers, :suburb, :string
    add_column :offers, :state, :string
    add_column :offers, :postcode, :string
    add_column :offers, :phone, :string
    add_column :offers, :opening_hours, :string
  end

  def self.down
    remove_column :offers, :opening_hours
    remove_column :offers, :phone
    remove_column :offers, :postcode
    remove_column :offers, :suburb
    remove_column :offers, :address_2
    remove_column :offers, :address_1
    remove_column :offers, :outlet_name
  end
end
