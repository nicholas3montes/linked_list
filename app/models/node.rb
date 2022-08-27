class Node

  attr_accessor :element, :next_element

  # método de instância que preenche um elemento do nó e o nó sucessor.
  def initialize(element)
    
    @element = element
  end
end