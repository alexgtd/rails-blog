class User < ApplicationRecord
  validates :nickname, presence: true
  validates :email, presence: true
  has_many :articles
  has_many :comments
end
