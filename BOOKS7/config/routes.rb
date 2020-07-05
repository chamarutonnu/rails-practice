Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root :to => 'homes#top'
	get 'home/about' => 'homes#about', as: :about

   resources :users,only: [:show,:edit,:update,:index] do
    resource :relationships, only: [:create, :destroy]
    get 'follows' => 'relationships#follower', as: 'follows'
    get 'followers' => 'relationships#followed', as: 'followers'
    end
	resources :books, except: [:new] do
	resources :book_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
	end

	# devise_for :users, controllers: {
	#   sessions: 'users/sessions',
	#   registrations: 'users/registrations'
	# }
end
