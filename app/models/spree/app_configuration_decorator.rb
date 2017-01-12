Spree::AppConfiguration.class_eval do
  preference :use_master_variant_volume_pricing, :boolean, default: false
  preference :volume_pricing_role, :string, default: 'wholesale'
end
