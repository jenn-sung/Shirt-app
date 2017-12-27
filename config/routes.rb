Rails.application.routes.draw do

  namespace :v1 do
    get '/shirts' => 'shirts#index'
    get '/shirts/:id' => 'shirts#show'
    post '/shirts' => 'shirts#create'
    patch '/shirts/:id' => 'shirts#update'

  end
end
