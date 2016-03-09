Rails.application.routes.draw do
  get 'webhook/get'
  get 'webhook/all'

  post 'webhook/post'
end
