class Appointment < ApplicationRecord
  belongs_to :attended_events, :class_name => "Event"
	belongs_to :attendee, :class_name => "User"

	validates :attendee_id, presence: true
	validates :attended_event_id, presence: true
end
