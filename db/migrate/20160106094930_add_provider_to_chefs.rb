class AddProviderToChefs < ActiveRecord::Migration
  def change
    add_column :chefs, :provider, :string
  end
end
