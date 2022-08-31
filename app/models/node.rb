#classe Node responsável pela criação de cada nó da lista.
class Node
  #atributos o data que é o dado de cada nó e o next_node que é a referência a o próximo nó.
  attr_accessor :data, :next_node

  #método initialize que é o construtor, recebe um parâmetro data que prenche o atributo data. 
  def initialize(data)
    @data = data
  end
end