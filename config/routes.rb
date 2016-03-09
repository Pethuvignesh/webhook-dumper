Rails.application.routes.draw do
  root 'webhook#list'

  get 'webhook', to: 'webhook#get'
  post 'webhook', to: 'webhook#post'
end
