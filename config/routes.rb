Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :blogs
  if Rails.env.development?
    root 'blogs#index'
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
