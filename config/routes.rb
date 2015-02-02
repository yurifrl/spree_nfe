Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :products do
      resource :electronic_invoice
    end
  end
end