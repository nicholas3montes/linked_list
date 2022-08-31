require 'rails_helper'

describe 'Node', type: :model do

  context'Creating node' do
    
    it 'list' do
      #Setup
      data = Date.today
      another_data = 'pride precedes the fall'
      
      #Execution
      node = Node.new(data)
      another_node = Node.new(another_data)

      #Expectations
      expect(node.data).to eq(data)
      expect(another_node.data).to eq(another_data)
    end
  end
end   