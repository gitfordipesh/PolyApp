Rails.application.routes.draw do
  root "home#index"
  resources :articles do
    resources :comments,module: :articles
  end

  resources :events do
    resources :comments,module: :events
  end

  resources :broadcasts do
    resources :comments,module: :broadcasts
  end
  
  resources :comments
end
