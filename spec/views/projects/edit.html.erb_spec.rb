require 'rails_helper'

RSpec.describe "projects/edit", type: :view do

  let(:params) { {data: "asd"} }

  before(:each) do
    Project.new
  end

  # it "renders the edit project form" do
  #   render

  #   assert_select "form[action=?][method=?]", project_path(@project), "post" do
  #   end
  # end
end
