Rails.application.routes.draw do
  get '/' => 'products#index'
  get '/products/:id' => 'products#show'
  post '/products' => 'products#create'
end
