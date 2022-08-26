Rails.application.routes.draw do
  resources :musicians #RESTful Routes

  get "/get-current-musician" => "sessions#get_current_musician"
  post "/login" => "sessions#login"

end
