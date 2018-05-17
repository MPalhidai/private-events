require 'rails_helper'

RSpec.describe User, type: :model do

  NUMBER_OF_EVENTS = 2

  let(:user) {FactoryBot.create(:user)}
  let(:events) do
    e = Array.new
    NUMBER_OF_EVENTS.times do
      e.push(FactoryBot.create(:event))
    end
  end

  describe "Associations" do
    it "can create many events" do
      first = user.events.create(creator: user, location: "The restaurant at the end of the universe", date: Date.today)
      second = user.events.create(creator: user, location: "My place", date: Date.today)
      expect(user.events.length).to be 2
    end

    xit "can attend many events" do
      pending "How do I even?"
      events.each do |event|
        event.attendee.create()
      end
    end
  end


end
