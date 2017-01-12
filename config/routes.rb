Rails.application.routes.draw do

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, at: '/'
  Spree::Core::Engine.add_routes do
    namespace :admin do
      resources :products do
        resources :variants do
          get :volume_prices, on: :member
        end
      end

      delete '/volume_prices/:id', to: 'volume_prices#destroy', as: :volume_price
      resources :volume_price_models
    end
  end
end
