module Types
  class PostsType < Types::BaseObject
    field :pagination, PaginationType, null: true
    field :posts, [PostType], null: true
  end
end