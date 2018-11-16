Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :vendors, only: [:index, :show]
  resources :sweets, only: [:index, :show]
  resources :vendor_sweets, only: [:new, :create]

end
