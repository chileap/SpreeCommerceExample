class CreateVolumePrices < ActiveRecord::Migration
  def change
    create_table :spree_volume_prices do |t|
      t.references :variant
      t.string :display
      t.string :range
      t.decimal :amount, precision: 8, scale: 2
      t.integer :position
      t.timestamps
    end
  end
end
