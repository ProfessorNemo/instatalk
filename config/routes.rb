# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'rooms#index'

  resources :rooms, only: %i[create index show], param: :token

  # по этому адресу прием запросов с вебсокет-составляющими
  mount ActionCable.server => '/cable'
end
