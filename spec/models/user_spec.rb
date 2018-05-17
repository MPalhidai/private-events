require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) {FactoryBot.create(:user)}

  describe "Associations" do
    it "can create many events" do
      first = user.events.create(creator: user, location: "The restaurant at the end of the universe", date: Date.today)
      second = user.events.create(creator: user, location: "My place", date: Date.today)
      expect(user.events.length).to be 2
    end

    xit "can attend many events" do
      pending "How do I even?"
    end
  end


end
