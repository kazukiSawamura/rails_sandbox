module Mutations
  class DeletePost < Mutations::BaseMutation
    argument :id, ID, required: true

    def resolve(id:)
      Post.find(id: id).discard
    rescue ActiveRecord::RecordNotFound => error
      raise GraphQL::ExecutionError, error.message
    end
  end
end