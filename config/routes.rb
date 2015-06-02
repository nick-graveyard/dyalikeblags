Dyalikeblags::Engine.routes.draw do

  
	root 'public/posts#index'

  namespace :dashboard do
    resources :posts
    resources :static_pages
    resources :images
    resources :users
    end

  namespace :public do
    resources :posts
    resources :static_pages, only: [:show], param: :title_bar
  end


end
