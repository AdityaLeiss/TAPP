Rails.application.routes.draw do


  devise_for :supers,path: 'supers',controllers: {sessions: 'supers/sessions'}
  devise_scope :super do
    get 'sign_in', to: 'super/sessions#new'
    get '/supers/sign_out' => 'super/sessions#destroy'
  end

  authenticated :super do
    resources :superadmins
    root 'superadmins#index', as: :authenticated_super
  end

  devise_for :mdosens, path: 'mdosens',controllers: { sessions: 'mdosens/sessions'}
  devise_scope :mdosen do
    get 'sign_in', to: 'mdosen/sessions#new'
    get '/mdosens/sign_out' => 'mdosen/sessions#destroy'
  end

  authenticated :mdosen do
    resources :bimdosens 
    resources :hdosens do
      resources :dsarans
    end
    root 'bimdosens#index', as: :authenticated_mdosen
  end

  devise_for :mahasiswas, path: 'mahasiswas',controllers: { sessions: 'mahasiswas/sessions',registrations: 'mahasiswas/registrations'}
  devise_scope :mahasiswa do
    get 'sign_in', to: 'mahasiswa/sessions#new'
    get '/mahasiswas/sign_out' => 'mahasiswa/sessions#destroy'
  end

  authenticated :mahasiswa do
    resources :babs do
      resources :sarans
    end
    root 'babs#index', as: :authenticated_root
  end

  devise_for :users,path: 'users', controllers: { sessions: 'users/sessions' }
  devise_scope :user do
    get 'sign_in', to: 'user/sessions#new'
    get '/users/sign_out' => 'user/sessions#destroy'

  end
  authenticated :user do
    resources :rumahs
    root 'rumahs#index', as: :authentic_user
  end


  resources :homes
  root 'homes#index'


  resources :filemhs
  resources :bimbingans
  resources :admins
  resources :dosens
  resources :students
  resources :options

end
