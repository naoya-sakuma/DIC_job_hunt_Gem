Rails.application.routes.draw do
  devise_for :users
  resources :blogs
  if Rails.env.development?
    root 'blogs#index'
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
