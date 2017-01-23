require 'rails_helper'

RSpec.describe Message, type: :model do
  context "validations" do
    [:content].each do |attr|
      it "validates presence of #{attr}" do
        expect(subject).to validate_presence_of(attr)
      end
    end
  end

  context "relationships" do
    it "belongs_to a user" do
      expect(subject).to belong_to(:user)
    end
  end

end
