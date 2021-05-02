require 'rails_helper'

RSpec.describe Project, type: :model do
  subject { Project.new()}

  before { subject.save }

  it "is valid with valid attributes" do
    expect(subject).to_not be_valid
  end
end
