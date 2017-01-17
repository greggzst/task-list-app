Rails.application.routes.draw do
  root 'tasks#index'
  
  resources :tasks, only: [:index, :new, :create, :destroy] do
    get :get_done, on: :member 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
