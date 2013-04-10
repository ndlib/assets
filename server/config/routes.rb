Rails.application.routes.draw do
  mount HesburghAssets::Engine, at: "/hesburgh_assets"

  root :to => 'style_guide#index'

  match 'bootstrap' => 'bootstrap#index'
  match 'bootstrap/:action' => 'bootstrap', as: 'bootstrap'
  match ':action' => 'style_guide', as: 'style_guide'
end
