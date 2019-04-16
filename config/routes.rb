Rails.application.routes.draw do
  # get 'tasks', to: 'tasks#view'
  # get 'tasks/:id', to: 'tasks#show', as: :task
  # get 'new', to: 'tasks#new', as: :new
  # post 'tasks', to: 'tasks#create'
  # get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # patch 'tasks/:id', to: 'tasks#update'
  # delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task

  resources :tasks
end
