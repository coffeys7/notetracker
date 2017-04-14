Rails.application.routes.draw do
  get 'notes/new'

  get 'notes/edit'

  get 'notes/all'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'notes/all' => 'notes#all'
  root 'notes#all'

  resources :notes

end
