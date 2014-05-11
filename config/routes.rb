Trucking::Application.routes.draw do

  scope "(:locale)" do
    namespace :admin do
      resources :contact_us_pages
      resources :about_us_pages
      resources :collaborators
      resources :users, only: [:index]
      resources :partners
      resources :pages, except: [:index]
      resources :page_sections
      resources :orders, only: [:index, :show]
      post "orders/accept"
      resources :gallery_items
    end

    mount Ckeditor::Engine => '/ckeditor'

    get "admin", to: "admin/orders#index"

    devise_for :users, controllers: { :sessions => "sessions", :registrations => "registrations" }

    get "pages/team"
    get "pages/partners"
    resources :services, only: [:index, :show]
    resources :orders

    root :to => 'pages#index'

  end

  get '/:locale' => 'pages#about'
end
