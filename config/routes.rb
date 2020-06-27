Rails.application.routes.draw do

  devise_for :administrators, controllers: { sessions: 'administrators/sessions' }
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"
  get 'events/new_event_option', to: "events#new_event_option", as: :new_event_event_option_otf

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :events do
        resources :comments
      end
    end
  end
  resources :users do
    resources :events
  end
  resources :mailboxes do
    resources :messages, shallow: true
  end

  resources :profiles

  resources :events do
    resources :reports
    resources :organizations
    resources :comments, shallow: true do
      resources :replies, shallow: true
    end
    resources :event_options, shallow: true do
      resources :event_votes, shallow: true
    end
    resources :event_votes
    resources :event_organizations
    resources :event_guests
  end
  resources :searches
  resources :organizations
  resources :organization_users

  match 'comments/:id/edit', controller: 'comments', action: 'update', via: 'post'


  resources :users, defaults: { format: :html }
  resources :comments, defaults: { format: :html }
  resources :events, defaults: { format: :html}
  resources :event_options, defaults: { format: :html}
  resources :mailboxes, defaults: { format: :html}
  resources :messages, defaults: { format: :html}
  resources :organizations, defaults: { format: :html}
  resources :profiles, defaults: {format: :html}
  resources :event_organizations, defaults: {format: :html}
  resources :event_guests, defaults: {format: :html}
  resources :organization_users, defaults: {format: :html}
  resources :event_votes, defaults: {format: :html}
  resources :replies, defaults: {format: :html}
  resources :reports, defaults: {format: :html}
end
