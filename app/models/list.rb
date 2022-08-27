class List
  
  attr_accessor :head

  #add: adiciona um node a lista. 
  def add(element)

    node = Node.new(element)
    node.next_element = @head
    @head = node
  end

  def print
    
    array = []
    p = @head

    while p != nil
      
      array << p.element
      p = p.next_element
    end
    array
  end

  def inverteLista()
  
  end
end