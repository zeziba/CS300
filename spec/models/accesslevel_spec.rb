require 'rails_helper'

RSpec.describe Accesslevel, type: :model do
  context "validation testing" do

    it "Ensure access level fails when no id" do
      level = Accesslevel.new
      expect(level.valid?).to eq(false)
    end

    it "Ensure access level has access level ID" do
      level = Accesslevel.new(accesslevelid: "Content of access level ID")
      expect(level.valid?).to eq(true)
    end
  end

  context "scopes tests" do
    let(:params) { { accesslevelid: "AccessLevelID"} }
    before(:each) do
      Accesslevel.create(params)
      Accesslevel.create(params)
      Accesslevel.create(params)
    end

    it "should return all comments" do
      expect(Accesslevel.count).to eq(3)
    end
  end
end
