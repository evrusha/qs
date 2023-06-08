require 'sidekiq/web'
require 'sidekiq/cron/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'
  root 'transactions#index'
  post '/import', to: 'transactions#import'
end
