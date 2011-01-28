class CreateCities < ActiveRecord::Migration
  def self.up
    create_table :cities do |t|
      t.string :name
      t.string :country
      t.string :region

      t.timestamps
    end
  end

  def self.down
    drop_table :cities
  end
end
