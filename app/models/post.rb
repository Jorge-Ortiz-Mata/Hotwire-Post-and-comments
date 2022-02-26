class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :body, presence: true
    after_create_commit {broadcast_prepend_to "posts"}
end
