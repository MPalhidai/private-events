require 'rails_helper'

RSpec.describe User, type: :model do

  EVENTS = 7

  let(:creator) { FactoryBot.create(:user)}
  let(:user) {FactoryBot.create(:user)}

  let(:events) do
    e = Array.new
    EVENTS.times do
      e.push(creator.events.create)
    end
    e
  end

  describe "Associations" do
    it "can create many events" do
      EVENTS.times {user.events.create}
      expect(user.events.length).to be EVENTS
    end

    it "shows .attended_events" do
      events.each {|event| event.attendees << user }
      expect(user.attended_events.length).to eq EVENTS
    end
  end


end
