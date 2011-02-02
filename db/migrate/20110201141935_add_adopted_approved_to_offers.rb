class AddAdoptedApprovedToOffers < ActiveRecord::Migration
  def self.up
    add_column :offers, :adopted, :boolean
    add_column :offers, :approved, :boolean
  end

  def self.down
    remove_column :offers, :approved
    remove_column :offers, :adopted
  end
end
