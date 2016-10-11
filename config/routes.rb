

Rails.application.routes.draw do
	#root 'static_pages#index'
  root 'welcome#index'

  get 'static_pages/contact'

  get 'static_pages/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
