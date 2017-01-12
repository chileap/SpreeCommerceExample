class ChangeDisplayNameForVolumePrices < ActiveRecord::Migration
  def change
    rename_column :spree_volume_prices, :display, :name
  end
end
