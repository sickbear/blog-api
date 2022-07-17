class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :rating, :text, :user_id, :post_id, presence: true
  validates :rating, comparison: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
