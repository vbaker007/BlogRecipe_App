class AddSecretToChefs < ActiveRecord::Migration
  def change
    add_column :chefs, :secret, :string
  end
end
