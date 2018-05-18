class User < ApplicationRecord
  has_many :events
  has_many :attended_events, class_name:"Appointment", foreign_key: "user_id"
end
