class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments

  validates :name, presence: true, length: {minimum: 5, maximum: 20}
  validates :nickname, presence: true, length: {minimum: 5, maximum: 20}, uniqueness: true
end
