Rails.application.routes.draw do
  root 'home#index'
  
  resources :tasks, only: [:index, :create] do
    get :get_done, on: :member 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
