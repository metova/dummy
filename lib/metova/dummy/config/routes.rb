Rails.application.routes.draw do

  resources :posts

  namespace :api, defaults: { format: 'json' } do
    resources :posts
  end

end
