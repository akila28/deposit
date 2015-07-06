RbfProj::Application.routes.draw do
  get "savingsdeposittransactions/index"
  get "savingsdeposittransactions/new"
  get "savingsdeposittransactions/create"
  get "savingsdeposittransactions/show"
  get "savingsdeposittransactions/pending"
  get "savingsdeposittransactions/activate"

  get "savingsdeposits/new"
  get "savingsdeposits/create"
  get "savingsdeposits/show"
  get "savingsdeposits/pending"
  get "savingsdeposits/activate"
 
resources :savingsdeposits do
   get :autocomplete_customer_first_name, :on => :collection
   get :approve, :on => :member
   put :activate, :on => :member
end

#match "savingsdeposits/:id/activate" => "savingsdeposits#activate", :as => "active_savingsdeposit"
  get "folios/index"
  resources :folios

resources :savingsdeposittransactions do
   put :activate, :on => :member
  end

resources :dailyproducts
  get "dailyproducts/show"
  
devise_for :users, :controllers => { :registrations =>'registration'}

resources :customers

resources :home
  get 'dashboard' => 'home#dashboard'
  get "home/show"
  
root :to =>'home#index'
end