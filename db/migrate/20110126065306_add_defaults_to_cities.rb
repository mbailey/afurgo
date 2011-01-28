class AddDefaultsToCities < ActiveRecord::Migration
  def self.up
    change_column_default(:cities, :country, 'australia')
    change_column_default(:cities, :region, 'australia')
  end

  def self.down
    change_column_default(:cities, :country, nil)
    change_column_default(:cities, :region, nil)
  end
end
