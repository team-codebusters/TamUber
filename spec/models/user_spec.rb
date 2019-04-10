require 'rails_helper'

RSpec.describe User, type: :model do
    context 'validation tests' do
        it 'no first name present' do
            user = User.new(lastname: 'Last', email: 'test@123.com', password: "123456").save
            expect(user).to eq(false)
        end
        
        it 'no last name present' do
            user = User.new(firstname: 'First', email: 'test@123.com', password: "123456").save
            expect(user).to eq(false)
        end
        
        it 'no email present' do
            user = User.new(firstname: 'First', lastname: 'Last', password: "123456").save
            expect(user).to eq(false)
        end
        
        it 'no password present' do
            user = User.new(firstname: 'First', lastname: 'Last', email: "Howdy@tamu.edu").save
            expect(user).to eq(false)
        end
        
        it 'saves sucessfully' do
            user = User.new(firstname: 'First', lastname: 'Last', email: "Howdy@tamu.edu", password: "123456").save
            expect(user).to eq(true)
        end
    end
end
