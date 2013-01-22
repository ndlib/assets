Assets::Application.routes.draw do
  root :to => 'static#index'
  match ':action' => 'static', :as => 'static'
end
