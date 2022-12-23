Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  get 'homes/about' => 'homes#about',as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]

end
  # get 'url' => 'コントローラー名#アクション名'1. ユーザーがRailsアプリケーションのURLにアクセスする
  #2. そのURLに対応したコントローラとアクションを呼び出す
  #3. そのアクションに対応したビューを表示する
  # resources メソッドは、ルーティングを一括して自動生成してくれる機能
  # only の後に配列で記述されている"new","index","show"のアクション以外は、ルーティングが行われません
  # resourceとなっている点に注目してください。 単数形にすると、/:idがURLに含まれなくなります。
  # resourceは「それ自身のidが分からなくても、関連する他のモデルのidから特定できる
