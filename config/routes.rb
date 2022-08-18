Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/categories' => 'categories#index'
  get '/categories/new' => 'categories#new', as: 'new_category'
  post '/categories' => 'categories#create', as: 'create_category'

  get '/categories/show/:id' => 'categories#show', as: 'show_category'
  get '/categories/edit/:id' => 'categories#edit', as: 'edit_category'
  patch '/categories/:id' => 'categories#update', as: 'update_category'
  delete '/categories/:id' => 'categories#delete', as: 'delete_category'
end
