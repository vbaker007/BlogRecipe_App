class AddUidToChefs < ActiveRecord::Migration
  def change
    add_column :chefs, :uid, :string
  end
end
