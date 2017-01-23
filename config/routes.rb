Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => "registrations" }
  root 'welcome#index'

  resources :messages

  mount ActionCable.server, at: '/cable'

end
