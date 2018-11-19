Rails.application.routes.draw do
  resources :events
  resources :checklibs
  resources :icons


  resources :categories do
    resources :links
  end

  get 'welcome/index'

  root 'welcome#index'
  
  get '/daily', to: 'events#daily'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
