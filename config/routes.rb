Rails.application.routes.draw do
  # 顧客用devise
  # skipで余分なルーティングを削除
  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  # 管理者用devise
  # skipで余分なルーティングを削除
   devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  # 顧客側
  scope module: :public do
    root to: "homes#top"
    get "about" => "homes#about"
    resources :items, only: [:show, :index]
    get "orders/thanks" => "orders#thanks"
    resources :orders, only: [:index, :show, :new, :create] do
      collection do
        post :confirm
      end
    end
    delete "cart_items/destroy_all" => "cart_items#destroy_all"
    resources :cart_items, only: [:index, :update, :destroy, :create]
    resources :addresses, only: [:index, :create, :edit, :update, :destroy]
    resource "customers", only: [:show, :edit, :update]
    get "customers/unsubscribe" => "customers#unsubscribe"
    patch "customers/withdraw" => "customers#withdraw"
  end

  # 管理者側
  namespace :admin do
    root to: "homes#top"
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :orders, only: [:show, :update] do
      resources :order_details, only: [:update]
    end
  end
end
