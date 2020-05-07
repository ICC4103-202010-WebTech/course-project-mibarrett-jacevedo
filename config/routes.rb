Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :events do
        resources :comments, shallow: true
      end
    end
  end

  resources :comments, defaults: { format: :html }
  resources :events, defaults: { format: :html}

end
