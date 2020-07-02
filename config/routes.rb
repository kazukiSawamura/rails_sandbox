Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  root 'top#index'
  get "top/index"
  get "react_bootstrap", to: "react_bootstrap#index"
end
