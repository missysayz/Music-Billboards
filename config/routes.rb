Rails.application.routes.draw do
  root "billboards#index"

  resources :artists
  resources :billboards do 
    resources :songs
  end


end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
