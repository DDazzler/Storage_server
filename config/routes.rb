Rails.application.routes.draw do
  root 'files#index'
  get 'files/download', to: 'files#download', as: 'download'
  get 'files/download_folder', to: 'files#download_folder', as: 'download_folder'
end



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
