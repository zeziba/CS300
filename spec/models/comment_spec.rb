require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject { Comment.new()}

  before { subject.save }

  it "is valid with valid attributes" do
    expect(subject).to_not be_valid
  end
end
