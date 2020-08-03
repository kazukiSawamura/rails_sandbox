class Post < ApplicationRecord

  belongs_to :status

  fulltext_search_score = {
      "posts.title"=>3,
      "posts.body"=>1,
      "statuses.name"=>2
  }

  scope :fulltext_search, ->(query) {
    select("posts.*")
        .where("fulltext &@~ '#{query}'")
        .joins(:status)
  }

end