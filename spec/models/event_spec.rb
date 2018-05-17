require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:user) { FactoryBot.create(:user)}
  let(:attendee_one) {FactoryBot.create(:user)}
  let(:attendee_two) {FactoryBot.create(:user)}
  let(:event){user.events.create}

  describe "associations" do
    it "has a User as creator" do
      expect(event.creator).to eq(user)
    end

    it "has many Users as attendees" do
      pending "Not implemented"
      attendee_one.attended_event = event
      attendee_two.attended_event = event
      expect(event.attendees).to eq 2
    end
  end
end
