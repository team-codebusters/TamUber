require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the UsersHelper. For example:
#
# describe UsersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe UsersHelper, type: :helper do
    context 'validation tests' do
        it 'gravatar present' do
            user = User.new(firstname: 'First', lastname: 'Last', email: 'test@123.com').save
            grav = gravatar_for(user, options = { size: 80 })
            expect(grav).to eq(true)
        end
    end
end
