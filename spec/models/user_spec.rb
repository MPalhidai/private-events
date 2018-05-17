require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) {FactoryBot.create(:user)}

  describe "Associations" do
    it "can create many events" do
      first = user.events.create(creator: user, location: "The restaurant at the end of the universe", date: Date.today)
      second = user.events.create(creator: user, location: "My place", date: Date.today)
      expect(first.nil?).to be false
      expect(second.nil?).to be false
      expect(first.creator).to eq(user)
      expect(second.creator).to eq(user)
    end

    xit "can attend many events" do
      pending "How do I even?"
    end
  end


end
