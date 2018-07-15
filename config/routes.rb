Rails.application.routes.draw do
  root 'questions#index'
  devise_for :users
  get   'questions' => 'questions#index'
  get   'questions/new'  =>  'questions#new'
  post  'questions'      =>  'questions#create'
  get  'questions/:id'      =>  'questions#show'
  get   'athletes'    =>  'athletes#index'
  get   'users/:id'   =>  'users#show'
  get   'athletes/:id' =>  'athletes#show'
end
