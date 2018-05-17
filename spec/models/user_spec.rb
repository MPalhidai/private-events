require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) {FactoryBot.build(:user)}

  describe "Associations" do
    it "can create many events" do
      first = user.events.create(host: user.id, location: "The restaurant at the end of the universe", date: Date.today)
      second = user.events.create(host: user.id, location: "My place", date: Date.today)
      expect(first.nil?).to be false
      expect(second.nil?).to be false
      expect(first.host).to eq(user.id)
      expect(second.host).to eq(user.id)
    end

    it "can attend many events" do
      pending "How do I even?"
    end
  end


end
