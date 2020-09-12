module Mutations
  class CreatePost < Mutations::BasePost
    
    def resolve(title:, status_id:, body:)
      post = Post.create(title: title, status_id: status_id, body: body)
      {
          post: post,
          errors: post.errors.full_messages
      }
    end
  end
end