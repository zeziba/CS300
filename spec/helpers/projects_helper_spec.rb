require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ProjectsHelper. For example:
#
# describe ProjectsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ProjectsHelper, type: :helper do
  describe "check readme strings" do
    it "checks readme exists" do
      expect(check_readme_str?('http://github.com/README.md')).to be true
    end

    it "check readme if does not exist" do
      expect(check_readme_str?('jib')).to be false
    end
  end

  describe "get username from string" do
    it "should get user name" do
      expect(remove_at('jib@mail.com')).to eq('jib')
    end

    it "should not get user name" do
      expect(remove_at('@mail.com')).to eq('')
    end
  end
end
