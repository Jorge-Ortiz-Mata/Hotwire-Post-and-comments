class Comment < ApplicationRecord
  belongs_to :post
  validates :body, presence: true
  after_create_commit {broadcast_prepend_to "comments"}
end
