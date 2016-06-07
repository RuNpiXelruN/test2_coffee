class User < ActiveRecord::Base
  has_one :profile, dependent: :destroy
  accepts_nested_attributes_for :profile
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
