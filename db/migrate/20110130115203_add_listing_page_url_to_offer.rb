class AddListingPageUrlToOffer < ActiveRecord::Migration
  def self.up
    add_column :offers, :listing_page_url, :string
  end

  def self.down
    remove_column :offers, :listing_page_url
  end
end
