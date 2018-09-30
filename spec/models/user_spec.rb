require 'rails_helper'

RSpec.describe User, type: :model do
    context 'validation tests' do
        it 'first name present' do
            user = User.new(lastname: 'Last', email: 'test@123.com').save
            expect(user).to eq(false)
        end
        
        it 'last name present' do
            user = User.new(firstname: 'First', email: 'test@123.com').save
            expect(user).to eq(false)
        end
        
        it 'email present' do
            user = User.new(firstname: 'First', lastname: 'Last').save
            expect(user).to eq(false)
        end
        
        it 'saves sucessfully' do
            user = User.new(firstname: 'First', lastname: 'Last', email: "Howdy@tamu.edu").save
            expect(user).to eq(true)
        end
    end
end
