Rails.application.routes.draw do
  resources :leads do
    resources :notes 
  end
  
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
