class Post < ApplicationRecord
  belongs_to :user

  has_many :comment, dependent: :destroy

  validates :title, :text, :user_id, presence: true
end
