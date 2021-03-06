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
      resources :mailer_settings, only: [:index]
      post "mailer_settings/update"
    end

    mount Ckeditor::Engine => '/ckeditor'

    get "admin", to: "admin/orders#index"

    devise_for :users, controllers: { :sessions => "sessions", :registrations => "registrations" }

    resources :orders

    root :to => 'pages#index'

  end

  get '/:locale' => 'pages#about'
end
