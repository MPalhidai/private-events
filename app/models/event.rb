class Event < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "user_id"
  has_many :appointments, :foreign_key => 'attended_event_id', dependent: :destroy
  has_many :attendees, :through => :appointments, dependent: :destroy

  validates :title, presence: true, length: { minimum: 2, maximum: 64 }
  validates :description, length: { maximum: 256 }
  validates :location, presence: true, length: { minimum: 2, maximum: 128}
  validates :date, presence: true
  validates :time, presence: true
end
