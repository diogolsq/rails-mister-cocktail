Rails.application.routes.draw do
  resources :cocktails, only: [:index, :new, :show, :create, :edit, :update] do
    resources :doses, only: [:new, :create, :destroy]
  end
  root to: 'cocktails#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
