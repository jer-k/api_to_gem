Rails.application.routes.draw do
  resources :libraries do
    member do
      get :books
    end
  end
end
