Rails.application.routes.draw do
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
