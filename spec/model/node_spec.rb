require 'rails_helper'

describe 'Node', type: :model do

  context'Creating node' do
    
    it 'Node created correctly by passing the element' do
      #Setup
      element = 8

      #Execution
      a = Node.new(element)

      #Expectations
      expect(a.element).to eq(element)
    end
  end
end   