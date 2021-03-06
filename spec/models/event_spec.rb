require 'rails_helper'

RSpec.describe Event, type: :model do

  ATTENDEES = 100

  let(:creator) { FactoryBot.create(:user)}

  let(:attendees) do
    ar = Array.new
    ATTENDEES.times do
      ar.push(FactoryBot.create(:user))
    end
    ar
  end

  let(:event){creator.events.create}

  describe "associations" do
    xit "has a User as creator" do
      expect(event.creator).to eq(creator)
    end

    xit "has many Users as attendees" do
      attendees.each do |att|
        event.attendees << att
      end
      expect(event.attendees.length).to eq ATTENDEES

      attendees.each {|att| expect(att.attended_events.first).to eq(event)}

    end
  end
end
