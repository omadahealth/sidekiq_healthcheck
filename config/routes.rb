SidekiqHealthcheck::Engine.routes.draw do
  scope module: 'sidekiq_healthcheck' do
    resources :queue, only: :index
  end
end
