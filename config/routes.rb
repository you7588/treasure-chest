Rails.application.routes.draw do

  get "/faq" => "pages#faq"

  devise_for :users

  resources :events

  namespace :admin do
    root "events#index"
    resources :events
  end

  root "events#index"

end
