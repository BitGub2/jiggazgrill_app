Rails.application.routes.draw do

	root 'home#index'

	namespace :admin do
		get 'dashboard/index'
		
		resources :categories
	end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
