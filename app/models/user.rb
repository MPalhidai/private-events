class User < ApplicationRecord
  has_many :events, :foreign_key => "user_id", dependent: :destroy
  has_many :appointments, :foreign_key => "attendee_id", dependent: :destroy
  has_many :attended_events, :through => :appointments, dependent: :destroy
end
