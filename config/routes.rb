Rails.application.routes.draw do

  resources :lists do
    resources :items
  end


  root 'lists#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
