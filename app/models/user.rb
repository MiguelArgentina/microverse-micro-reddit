class User < ApplicationRecord
  validates :name, presence: true, length: {minimum: 5, maximum: 20}
  validates :nickname, presence: true, length: {minimum: 5, maximum: 20}, uniqueness: true
end
