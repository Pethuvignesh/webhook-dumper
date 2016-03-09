Rails.application.routes.draw do
  root 'webhook#all'

  get 'webhook/get'
  get 'webhook/all'

  post 'webhook/post'
end
