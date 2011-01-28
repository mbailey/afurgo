class SetDefaultKindToDog < ActiveRecord::Migration
  def self.up
    change_column_default(:offers, :kind, 'dog')
    Offer.update_all ["kind = ?", 'dog']
  end

  def self.down
    change_column_default(:offers, :kind, 'nil')
  end
end
