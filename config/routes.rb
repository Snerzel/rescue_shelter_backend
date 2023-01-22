Rails.application.routes.draw do
get "/api/v1/", to: "api/v1/animals#index"

  namespace :api do
    namespace :v1 do
      resources :shelters do
        resources :animals
      end
      
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

