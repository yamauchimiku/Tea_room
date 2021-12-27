Rails.application.routes.draw do
  # 顧客用
  # URL /customers/sign_in
  # skipで余分なルーティングを削除
  devise_for :customers,skip: [:passwords,], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  # 管理者用
  # URL /admin/sign_in
  # skipで余分なルーティングを削除
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  # 会員側
  scope module: :public do
    root to: "homes#top"
    get "about" => "homes#about"
  end

end
