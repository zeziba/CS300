require 'rails_helper'

RSpec.describe Comment, type: :model do
  context "validation testing" do

    it "Ensure does require comment" do
      com = Comment.new
      expect(com.valid?).to eq(false)
    end

    it "Ensure comment has comment" do
      com = Comment.new(comment: "Content of comment")
      expect(com.valid?).to eq(true)
    end
  end

  context "scopes tests" do
    let(:params) { { comment: "Comment"} }
    before(:each) do
      Comment.create(params)
      Comment.create(params)
      Comment.create(params)
    end

    it "should return all comments" do
      expect(Comment.count).to eq(3)
    end
  end
end
