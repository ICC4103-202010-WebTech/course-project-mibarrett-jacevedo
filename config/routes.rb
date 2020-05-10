Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :events do
        resources :comments
      end
    end
  end
  resources :events
  resources :profiles
  resources :organizations
  resources :mailboxes do
    resources :messages, shallow: true
  end

  resources :comments, defaults: { format: :html }
  resources :events, defaults: { format: :html}
  resources :mailboxes, defaults: { format: :html}
  resources :messages, defaults: { format: :html}
  resources :organizations, defaults: { format: :html}
  resources :profiles, defaults: {format: :html}

end
