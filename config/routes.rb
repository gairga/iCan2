Rails.application.routes.draw do
#  get 'sessions/index'

  get 'projects/index'

  get 'projects/new'

  get 'projects/edit'

  get 'projects/_form'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/dashboard'
  get 'dashboard' => 'dashboard#index', as: :dashboard_url
  devise_for :users, controllers: {
		sessions: 'users/sessions',
		passwords: 'users/passwords',
		registrations: 'users/registrations'
	  }
  get 'home/index'
  resources :projects
  #resources :sessions, only: [:update]
  root to: "home#index"
  # Para más detalles sobre el DSL disponibles dentro de este archivo, consulte,
  # see http://guides.rubyonrails.org/routing.html

end
