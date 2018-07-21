Rails.application.routes.draw do
  root 'questions#index'
  devise_for :users
  get   'questions' => 'questions#index'
  get   'athletes/:id/questions/new'  =>  'questions#new'
  post  'athletes/:id/questions'      =>  'questions#create'
  get   'questions/:id'      =>  'questions#show'
  get   'athletes'    =>  'athletes#index'
  get   'users/:id'   =>  'users#show'
  get   'athletes/:id' =>  'athletes#show'
  get   'questions/:id/answer/new' => 'answers#new'
  post  'questions/:id/answer' => 'answers#create'
end
