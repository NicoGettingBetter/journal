Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students, only: [:create, :index, :update, :destroy, :show]
  resources :groups, only: [:create, :index, :update, :destroy, :show]
  resources :pages, only: [:create, :index, :update, :destroy, :show]
  resources :punched_cards, only: [:create, :index, :update, :destroy, :show]
  resources :subjects, only: [:create, :index, :update, :destroy, :show]
  resources :teachers, only: [:create, :index, :update, :destroy, :show]
  resources :teacher_users, only: [:create, :index, :update, :destroy, :show]
  resources :student_punched_cards, only: [:create, :index, :update, :destroy, :show]
  resources :comments, only: [:index, :create]
  resources :subject_groups, only: [:index, :create, :update, :destroy, :show]
end
