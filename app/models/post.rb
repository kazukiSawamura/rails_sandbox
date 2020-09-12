class Post < ApplicationRecord
  include Discard::Model
  default_scope -> { kept }

  belongs_to :status
  before_save :create_fulltext

  scope :fulltext_search, ->(query) {
    where("fulltext &@~ '#{query}'")
  }

  validates :title, length: { maximum: 200 }, presence: true
  validates :status_id, presence: true, inclusion: { in: Status.ids }
  validates :body, length: { maximum: 4000 }, presence: true

  private
    def create_fulltext
      self.fulltext = "#{title} #{body} #{status.name}"
    end
end