class AddMoreFieldsToOffer < ActiveRecord::Migration
  def self.up
    add_column :offers, :afurgo_url, :string
    add_column :offers, :profile_pic_url, :string
    add_column :offers, :fbshare_msg, :text
    add_column :offers, :kind, :string
    add_column :offers, :sex, :string
    add_column :offers, :age, :string
  end

  def self.down
    remove_column :offers, :age
    remove_column :offers, :sex
    remove_column :offers, :kind
    remove_column :offers, :fbshare_msg
    remove_column :offers, :profile_pic_url
    remove_column :offers, :afurgo_url
  end
end
