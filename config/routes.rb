Rails.application.routes.draw do
  root 'welcome#index'
  # get 'welcome/index'
  post 'welcome/index'
  get 'welcome/:id'=>'welcome#show'
  delete 'welcome/:id'=>'welcome#delete'
  post 'welcome'=>'welcome#create'
patch 'welcome/:id'=>'welcome#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
