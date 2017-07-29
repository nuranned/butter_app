Rails.application.routes.draw do
resources :items, only: [:index]
resource :cart, only: [:show]
resources :order_items, only: [:create, :update, :destroy]
root to: "items#index"
end
