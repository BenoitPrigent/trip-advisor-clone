Rails.application.routes.draw do
  resources :restaurants do
    collection do
      # / restaurants/...
      get 'top', to: 'restaurants#top'
    end
    member do
      get 'chef', to: 'restaurants#chef'
    end
  end





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
