class User < ApplicationRecord
  has_many :blogs
  before_validation { email.downcase! }
  validates :name,  uniqueness: true, presence: true, length: { maximum: 30 }
   validates :email, uniqueness: true, presence: true, length: { maximum: 255 },
                      format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
