Rails.application.routes.draw do
  root to: 'languages#index'
	resources :languages, only: 'index'
end
