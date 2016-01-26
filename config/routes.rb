Rails.application.routes.draw do
  resources :subthemeparagraphs
  resources :theme_paragraphs
  resources :subthemes

  get 'home/index'
  get 'iqan' => 'iqan#index'
  get 'iqan/:id' => 'iqan#show', as: 'showiqan'

  get 'themes/index'
  get 'themes' => 'themes#index'
  get 'themes/:id' => 'themes#show', as: 'theme'

  root "home#index"
end