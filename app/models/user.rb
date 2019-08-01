class User < ApplicationRecord
  has_many :reservations
  has_many :restaurants, through: :reservations

  before_save { self.username = username.downcase }
  validates :username,
    presence: true,
    uniqueness: {case_sensitive: false },
    length: { minimum: 3, maximum: 25 }
  validates :username,
    presence: true,
    length: { maximum: 30 },
    uniqueness: { case_sensitive: false }
  # has_secure_password
end
