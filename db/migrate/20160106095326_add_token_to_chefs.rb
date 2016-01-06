class AddTokenToChefs < ActiveRecord::Migration
  def change
    add_column :chefs, :token, :string
  end
end
