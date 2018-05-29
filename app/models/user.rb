class User < ApplicationRecord
  has_many :events
  has_many :appointments
  has_many :attended_events, :through => :appointments, :source => :event
end
