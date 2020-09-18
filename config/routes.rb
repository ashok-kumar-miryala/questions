Rails.application.routes.draw do
  get 'questions/index'
  get 'questions/show'
  get 'questions/create'
  get 'questions/new'
  get 'questions/edit'
  resources :topics
  get 'questions/index'
  get 'questions/show'
   devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

 get 'questions', to: 'questions#index', as: 'questions' # index
 get 'questions/:id', to: 'questions#show', as: 'question' # show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "questions#index"
end
