Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :admin do
    get 'add_on_menu' => 'add_on_menu#index', :as => :add_on_menu
  end
end
