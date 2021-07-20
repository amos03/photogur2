Rails.application.routes.draw do
  get "pictures" => "pictures#index"

  get 'pictures/:id' => 'pictures#show', as: 'picture'

end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
