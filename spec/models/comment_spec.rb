require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject { Comment.new()}
  let(:state) { [:not_reviewed, :published, :hidden] }

  before { subject.save }

  # Check all enums to ensure validity
  it 'has the right index' do
    state.each_with_index do |item, index|
      expect(described_class.states[item]).to eq index
    end
  end

  it "is valid with valid attributes" do
    expect(subject).to_not be_valid
  end

  it "is not valid without data#string" do
    subject.data = nil
    expect(subject.data).to equal nil
  end

end
