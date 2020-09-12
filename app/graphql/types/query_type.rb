module Types
  class QueryType < Types::BaseObject

    field :posts, Types::PostsType, null: false do
      argument :fulltext, String, "検索文字列", required: false
      argument :page, Int, required: false
      argument :limit, Int, required: false
    end
    def posts(fulltext: nil, page: 1, limit: 20)
      posts = Post
      posts = Post.fulltext_search(fulltext) if fulltext.present?
      posts = posts.joins(:status).order(updated_at: :desc).page(page).per(limit)
      {
          pagination: pagination(posts),
          posts: posts
      }
    end

    field :post, Types::PostType, null: false do
      argument :id, Int, required: false
    end
    def post(id:)
      Post.find(id)
    end

    private
      def pagination(posts)
        {
            total_count: posts.total_count,
            limit_value: posts.limit_value,
            total_pages: posts.total_pages,
            current_page: posts.current_page
        }
      end
  end
end
