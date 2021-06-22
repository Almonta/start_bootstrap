Rails.application.routes.draw do
  root to: 'start_bootstraps#top'
  resources :start_bootstraps do
    collection do
      get :top
    end
  end
  # root to: 'start_bootstraps#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
