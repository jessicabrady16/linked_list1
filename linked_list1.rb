require_relative 'linked_list_node'

class Stack
  attr_reader :linked_list

  def initialize
      @linked_list = nil
  end

  # Push a value onto the stack
  def push(value)
      if @linked_list == nil
        @linked_list = LinkedListNode.new(value)
      else
        @linked_list = LinkedListNode.new(value, @linked_list)
      end
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return the value to the user
  def pop
      top_plate = @linked_list
      return nil unless top_plate
      @linked_list= top_plate.next_node
      return top_plate.value
  end

end

def reverse_list(top_plate)
  reversed_list = Stack.new

  while top_plate
      reversed_list.push top_plate.value
      top_plate = top_plate.next_node
  end

  return reversed_list.linked_list
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

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

# test data
# Creates a new Stack object
stack = Stack.new
# Pushes (adds) the number 1 to the empty stack
stack.push(1)
# Pushes the number 2 to the TOP of the stack
stack.push(2)
# Pops (removes) the TOP number from the stack (2)

print_values(reverse_list(stack.linked_list))

puts stack.pop
# Pops the remaining number from the stack (1)
puts stack.pop
# Tries to pop the TOP number from the stack,
# but it is empty so it returns nil
puts stack.pop


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)

