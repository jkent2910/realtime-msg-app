require 'rails_helper'

RSpec.describe User, type: :model do

  context "relationships" do
    it "has many messages" do
      expect(subject).to have_many(:messages)
    end
  end

end