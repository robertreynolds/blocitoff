Blocitoff::Application.routes.draw do

  devise_for :users

  resources :users do
       resources :tasks
       match '/tasks/:id/complete' , to: 'tasks#complete', as: :complete
  end

  

authenticated :user do
  root  :to => 'tasks#index'
end   



match "about" => 'welcome#about', via: :get

root :to =>'home#index'

end
