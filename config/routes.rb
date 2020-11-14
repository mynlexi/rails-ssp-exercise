Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "users#index"
  resources :exercises
  resources :users do
    resources :trainingsplans do
      resources :collections
    end
  end

end
