Rails.application.routes.draw do
  root 'top#index'
  get "top/index"
  get "react_bootstrap", to: "react_bootstrap#index"
end
