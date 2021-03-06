Rails.application.routes.draw do
 root "artists#index"

 get "artists" => "artists#index"
 get "artists/:id" => "artists#show", as: :artist
 delete "artists/:id" => "artists#destroy"

 resources :artists do
   resources :songs
end
end
