Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing
  namespace :api do
    namespace :v1 do
      resources :bikes do
        resources :options do
          resources :values
        end
      end
      resources :options
      resources :values
    end
  end
end
