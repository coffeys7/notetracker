Rails.application.routes.draw do

  root 'folders#all'

  get 'folders/all' => 'folders#all'

  get '/folders/hour_notes' => 'folders#hour_notes'
  get '/folders/todo_notes' => 'folders#todo_notes'

  get '/todo_notes/update_note_color' => 'todo_notes#update_note_color'

  get '/folders/new_hour_note' => 'folders#new_hour_note'
  get '/folders/edit_hour_note' => 'folders#edit_hour_note'

  get '/folders/new_todo_note' => 'folders#new_todo_note'
  get '/folders/edit_todo_note' => 'folders#edit_todo_note'

  resources :folders, only: [:create, :new, :edit, :update, :destroy]
  resources :hour_notes, only: [:create, :update, :destroy]
  resources :todo_notes, only: [:create, :update, :destroy]

end
