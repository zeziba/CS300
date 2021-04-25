require 'rails_helper'

RSpec.describe User, type: :model do
  context "validation testing" do

    it "Ensure user can not be created without user id" do
      usr = User.new
      expect(usr.valid?).to eq(false)
    end

    it "Ensure user can be created with user ID" do
      usr = User.new(userid: "Content of user ID")
      expect(usr.valid?).to eq(true)
    end
  end

  context "scopes tests" do
    let(:params) { { userid: "UserID"} }
    before(:each) do
      User.create(params)
      User.create(params)
      User.create(params)
    end

    it "should return all users" do
      expect(User.count).to eq(3)
    end
  end
end