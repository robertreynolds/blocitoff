Blocitoff::Application.routes.draw do

  devise_for :users

  resources :users do
      resources :lists do
        resources :tasks
      end
  end






  match "about" => 'welcome#about', via: :get

  root :to =>'home#index'

end
