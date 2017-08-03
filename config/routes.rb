Rails.application.routes.draw do

  resource :user

  get "/faq" => "pages#faq"

  devise_for :users

  resources :events


  namespace :admin do
    root "events#index"
    resources :events
      resources :users do
        resource :profile, :controller => "user_profiles"
      end
  end

  root "events#index"

end
