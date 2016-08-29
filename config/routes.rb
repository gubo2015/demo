Rails.application.routes.draw do
  root 'welcome#index'
  # get 'welcome/index'
  post 'welcome/index'
  get 'welcome/:id'=>'welcome#show'
  delete 'welcome/:id'=>'welcome#delete'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
