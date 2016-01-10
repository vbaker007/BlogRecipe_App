class AddGravatarToChefs < ActiveRecord::Migration
  def change
    add_column :chefs, :gravatar, :string
  end
end
