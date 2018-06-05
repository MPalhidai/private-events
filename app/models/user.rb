class User < ApplicationRecord
  has_many :events, :foreign_key => "user_id", dependent: :destroy
  has_many :appointments, :foreign_key => "attendee_id", dependent: :destroy
  has_many :attended_events, :through => :appointments, dependent: :destroy

  before_save { email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false }
end
