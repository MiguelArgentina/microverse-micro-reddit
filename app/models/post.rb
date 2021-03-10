class Post < ApplicationRecord
  validates :title, presence: true, length: {minimum: 2, maximum: 50}
  validates :body, presence: true, length: {minimum: 2, maximum: 200}

  belongs_to:user
end
