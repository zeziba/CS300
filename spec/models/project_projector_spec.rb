require 'rails_helper'

RSpec.describe ProjectProjector, type: :model do
    context "validation tests" do
        
        it "Create generic project - does not create new project right now /TODO" do
            proj = ProjectProjector.new
            expect(proj.valid?).to eq(true)
        end
    end

    context "scopes tests" do
      let(:params) {  }
      before(:each) do
        ProjectProjector.create(params)
        ProjectProjector.create(params)
        ProjectProjector.create(params)
      end
  
      it "should return all Project Projectors" do
        expect(ProjectProjector.count).to eq(3)
      end
    end
end
