Rails.application.routes.draw do
  resources :vendorsweets, only: [:new, :create]
  resources :sweets, only: [:index, :show]
  resources :vendors, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/sweets', to: "sweets#index", as: "sweets"
  # get '/vendors', to: "vendors#index", as: "vendors"

end
