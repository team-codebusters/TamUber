require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
    context 'validation tests' do
        it 'returns TamUber for no input' do
            howdy = full_title('')
            expect(howdy).to eq('TamUber')
        end
        
        it 'returns whatever | TamUber for an input' do
            howdy = full_title('Bruhbruh')
            expect(howdy).to eq('Bruhbruh | TamUber')
        end
    end
end
