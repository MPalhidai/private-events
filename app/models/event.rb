class Event < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "user_id"
  has_many :appointments
  has_many :attendees, :through => :appointments, :source => :user
end
