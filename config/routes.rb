Rails.application.routes.draw do

  resources :categories, except: [:new, :edit] do
    resources :articles
  end

  resources :articles, except: [:new, :edit] do
    resources :comments, except: [:new, :edit]
  end

end

