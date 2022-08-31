#classe ChainList que é responsável por criar uma lista encadeada.
class ChainList
  
  #atributos head é a cabeça da lista(o primeiro nó), e o tail é a calda (o ultimo nó).
  attr_accessor :head, :tail, :size
  
  #método initialize preenche o atributo size
  def initialize
    @size = 0
  end
  
  #método add, que recebe um parâmetro data que preenche a instância do Nó, é responsável 
  #por adicionar um nó a lista.  
  def add(data)
    node = Node.new(data)

    if @head == nil 
      @head = node 
      @tail = node
    end
    
    @tail.next_node = node
    @tail = node
    @size += 1
  end

  #método invert é responsável por inverter a lista.
  def invert
    if @head != nil
      previous = nil
      current = @head
      seg = @head.next_node
      @head = @tail
      @tail = current

      while seg != nil do
        seg = current.next_node
        current.next_node = previous
        previous = current
        current = seg
      end
      return @head
    end

    return "empty list"
  end

  #método get retorna conforme fosse o index
  def get(num)
    aux = @head
    for _ in 1..num do
      aux = aux.next_node
    end
    aux.data
  end
end