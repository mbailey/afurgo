class ChangeApprovedAdoptedTypes < ActiveRecord::Migration
  def self.up
    change_column :offers, :adopted, :datetime
    change_column :offers, :approved, :datetime
  end

  def self.down
    change_column :offers, :adopted, :boolean
    change_column :offers, :approved, :boolean
  end
end
