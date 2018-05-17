require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:user) { FactoryBot.create(:user)}
  let(:event){user.events.create}
  describe "associations" do
    it "has a User as creator" do
      expect(event.creator).to eq(user)
    end
  end
end
