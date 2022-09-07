require 'rails_helper'

describe 'ChainList', type: :model do

  context'Criando lista encadeada' do
    
    it 'Dado uma lista com um unico item o mesmo deve ser a cabeça e a calda da lista ' do
      #Setup
      data = 999.999
          
      #Execution
      list = ChainList.new
      list.add(data)
      
      #Expectations
      expect(data).to eq(list.head.data)
      expect(data).to eq(list.tail.data)
    end

    it 'Dado uma lista com 3 nós adicionados, ela deve retornar a cabeça
    e calda como o primeiro e o último elemento da lista' do
      #Setup
      data = 999.999
      second_data = Date.new(2021,8,31)
      third_data = '999.999'
          
      #Execution
      list = ChainList.new
      list.add(data)
      list.add(second_data)
      list.add(third_data)
      
      #Expectations
      expect(data).to eq(list.head.data)
      expect(third_data).to eq(list.tail.data)
    end
  end

  context'Criando lista encadeada e chamando metodo invert' do

    it 'Dado uma lista contendo 3 nós, Deve retornar a lista invertida com o 
    primeiro nó sendo cauda e o último nó sendo a cabeça' do
      #Setup
      data = 4654161
      second_data = 15/3/1888
      third_data = 'sucess'
      list = ChainList.new
      list.add(data)
      list.add(second_data)
      list.add(third_data)
          
      #Execution
      list.invert

      #Expectations
      expect(third_data).to eq(list.head.data)
      expect(data).to eq(list.tail.data)
      expect(list.tail.next_node).to eq(nil)
    end

    it 'Dado uma lista contendo um item, quando eu inverter essa lista,
     deve retornar a lista com esse unico node' do
      #Setup
      list = ChainList.new
      data = 1564.654
      list.add(data)

      #Execution
      list.invert

      #Expectations 
      expect(list.head.data).to eq(data)
      expect(list.head.next_node.data).to eq(data)
      expect(list.tail.data).to eq(data)
    end

    it 'Dado uma lista sem nenhum item adicionado e for chamado o metodo invert retornar lista vazia' do
      #Setup
      list = ChainList.new

      #Execution
      list.invert

      #Expectations 
      expect(list.head).to eq(nil)
      expect(list.tail).to eq(nil)
      expect(list.invert).to eq("empty list")
    end 
    
    it 'Dado uma lista com diversos nós adicionados, removo o ultimo e o tail é atualizado!' do
      #Setup
      list = ChainList.new
      list.add("Primeiro")
      list.add("Segundo")
      list.add("Terceiro")
      list.add("Quarto")
      list.add("Quinto")

      #Execution
      list.remove("Terceiro")
      list.remove("Quinto")

      #Expectations
      expect(list.tail.data).to eq("Quarto")
      expect(list.count).to eq(3)
    end
  end
end 

