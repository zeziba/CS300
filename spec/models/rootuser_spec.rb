require 'rails_helper'

RSpec.describe Rootuser, type: :model do
  context "validation testing" do

    it "Ensure root user can be created" do
      ruser = Rootuser.new
      expect(ruser.valid?).to eq(true)
    end
  end

  context "scopes tests" do
    let(:params) { }
    before(:each) do
      Rootuser.create(params)
      Rootuser.create(params)
      Rootuser.create(params)
    end

    it "should return all root users" do
      expect(Rootuser.count).to eq(3)
    end
  end
end
