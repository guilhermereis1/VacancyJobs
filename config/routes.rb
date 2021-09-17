Rails.application.routes.draw do
  post 'send_selfie/:application_vacancy_id' => 'application_vacancy#send_selfie', as: :send_selfie
  post 'send_cnh/:application_vacancy_id' => 'application_vacancy#send_cnh', as: :send_cnh
  post 'send_cnh_info/:application_vacancy_id' => 'application_vacancy#send_cnh_info', as: :send_cnh_info

  get 'site_categories/index'
  namespace :dash_admin do
    get 'dashboard/index'
    get 'dashboard/users'
  end
  get 'application_vacancy_admin/:id' => 'application_vacancy_admin#index', as: :application_vacancy_admin
  post 'send_documentation/:application_vacancy_id' => 'application_vacancy#send_documentation', as: :application_vacancy_send_documentation
  post 'send_curriculum/:application_vacancy_id' => 'application_vacancy#send_curriculum', as: :application_vacancy_send_curriculum
  get 'application_vacancy/:v_id' => 'application_vacancy#index', as: :application_vacancy_id
  get 'apply_to_vacancy/:vacancy_id/:user_id' => 'vacancy#apply_to_vacancy', as: :apply_to_vacancy
  namespace :dash_user do
    get 'dashboard/index'
  end
  devise_for :users
  resources :cities
  resources :states
  get 'vacancy/:vacancy_id' => 'vacancy#index', as: :vacancy_id
  get 'category/:category_id' => 'category#index', as: :category_id
  resources :vacancies
  resources :categories
  namespace :dash_admin do
    get 'dashboard/index'
  end
  get 'dash_admin/index'
  devise_for :admins
  get 'home/index'
  get 'admin' => 'dash_admin/dashboard#index'
  root to: 'home#index'
end
