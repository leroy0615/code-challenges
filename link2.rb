class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def reverse_list2(list, previous=nil)    
  if list
    cdr = list.next_node
    list.next_node = previous     
    reverse_list2(cdr, list)
  else
    previous
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)


puts "original list"
print_values(node3)
puts
puts "reversed/mutated list"
print_values(reverse_list2(node3))