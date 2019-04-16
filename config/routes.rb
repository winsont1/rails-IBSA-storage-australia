Rails.application.routes.draw do
  resources :goods

  resources :consignments do
    collection {post :import}
  end

  # get 'consignments', to: 'consignments#import'
  # post 'consignments', to: 'consignments#import'

  root to: 'goods#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
