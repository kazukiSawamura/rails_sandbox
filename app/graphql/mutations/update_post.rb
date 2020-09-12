module Mutations
  class UpdatePost < Mutations::BasePost
    argument :id, Int, required: true

    def resolve(id:, title:, status_id:, body:)
      post = Post.find(id)
      post.update(title: title, status_id: status_id, body: body)
      {
          post: post,
          errors: post.errors.full_messages
      }
    rescue ActiveRecord::RecordNotFound => error
      raise GraphQL::ExecutionError, error.message
    end
  end
end