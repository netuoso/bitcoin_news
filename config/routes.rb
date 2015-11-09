Rails.application.routes.draw do
  get 'crypto_ticker', to: 'home#crypto_ticker'
  root 'home#index'
end
