module Mutations
  class BasePost < Mutations::BaseMutation
    argument :title, String, required: true
    argument :status_id, Int, required: true
    argument :body, String, required: true

    field :post, Types::PostType, null: true
    field :errors, [String], null: false

  end
end