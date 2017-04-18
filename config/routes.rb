Rails.application.routes.draw do

  root 'folders#all'

  get 'notes/all' => 'notes#all'

  get 'folders/all' => 'folders#all'
  get 'folders/notes' => 'folders#notes'

  get '/folders/new_note' => 'folders#new_note'
  get '/folders/edit_note' => 'folders#edit_note'

  resources :notes, only: [:create, :new, :edit, :update, :destroy]
  resources :folders, only: [:create, :new, :edit, :update, :destroy]

end
