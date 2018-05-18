class Event < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "user_id"
  has_many :attendees, class_name:"Appointment", foreign_key: "event_id"
end
