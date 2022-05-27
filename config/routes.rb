Rails.application.routes.draw do
  resources :tv_shows
  resources :tv_shows do
  resources :episodes
  end

end
