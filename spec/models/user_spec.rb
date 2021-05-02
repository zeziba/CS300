require 'rails_helper'

RSpec.describe User, type: :model do
  let(:params) { { name: "apple" } }

  subject { User.new(params) }

  before { subject.save }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
end
