require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
    subject { Comment.new }
  
    before { subject.save }

    it "is comment controller to not be valid" do
        expect(subject).to_not be_valid
    end

    it "is comment controller to not be valid" do
        expect(subject.created_at)
    end
end
