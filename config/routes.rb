Rails.application.routes.draw do
  get 'postings/index'

  get 'postings/show'

  get 'postings/new'

  get 'postings/edit'

  get 'postings/create'

  get 'postings/update'

  get 'postings/destroy'

  root to: 'postings#index'
  devise_for :users
  resources :users
  resources :postings
end
