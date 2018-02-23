Rails.application.routes.draw do
  namespace :api do
    defaults format: 'json' do
      resources :schools
    end
  end
end
