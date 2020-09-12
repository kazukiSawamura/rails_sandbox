module Types
  class PostType < Types::BaseObject
    field :id, ID, 'ID', null: false
    field :title, String, 'タイトル', null: false
    field :status, StatusType, 'ステータス', null: false
    field :body, String, '本文', null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, '作成日時', null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, '更新日時', null: false
  end
end