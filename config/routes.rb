Rails.application.routes.draw do
  devise_for :users
 get 'questions' => 'questions#index'
 get   'questions/new'  =>  'questions#new'
 post  'questions'      =>  'questions#create'
 get 'athletes'    =>  'athletes#index'
 get   'users/:id'   =>  'users#show'
# get   'athletes/:id' =>  'athletes#show'
end
