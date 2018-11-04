Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pins do
    member do
      put 'like', to: 'pins#upvote'
    end
    end
  root 'pins#index'
end
