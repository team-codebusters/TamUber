require 'spec_helper'

RSpec.describe "users/show.html.erb", type: :view do
  context 'validation tests' do
        it 'displays first name' do
            user = User.new(firstname: 'first').save
            expect(user).to eq(false)
        end
    end
end
