Rails.application.routes.draw do
  root 'files#index'
  get 'files/download', to: 'files#download', as: 'download'
end



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
