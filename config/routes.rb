Rails.application.routes.draw do
  resources :texts
  #get '/texts/new', to: 'texts#new', as: :new_text
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  
  get '/text_divider/:id', to: 'texts#text_divider', as: 'text_divider'
  get '/text_invert/:id', to: 'texts#text_invert', as: 'text_invert'
end
