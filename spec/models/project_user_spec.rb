require 'rails_helper'

RSpec.describe ProjectUser, type: :model do
  let(:params) { }

  subject { ProjectUser.new(params) }

  before { subject.save }

  it "is valid with valid attributes" do
    expect(subject).to_not be_valid
  end
end
