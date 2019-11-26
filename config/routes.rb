Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # list all tasks
  get 'tasks', to: 'tasks#list'

  # Form to fill the data
  get 'tasks/new', to: 'tasks#new', as: :new_task

  # Take the data and add it to DB
  post 'tasks', to: 'tasks#create'

  # form to change data
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  # Take the updated data and add it to DB
  patch 'tasks/:id', to: 'tasks#update'

  # delete a task using id
  delete 'tasks/:id', to: 'tasks#destroy'

  # show the details of the task
  get 'tasks/:id', to: 'tasks#show', as: :task
end
