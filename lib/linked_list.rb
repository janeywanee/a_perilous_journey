require "./lib/node"


class LinkedList
  attr_reader :head
  def initialize
   @head = nil
   @node_count = 0
   @name_in_list = []
  end

  def append(name)
    @node_count +=1
    @name_in_list << name
    @head = Node.new(name)
  end

  def tail(current_node = @head)
    if current_node.next_node != nil
       current_node = current_node.next_node
       tail(current_node)
    else
      tail
    end
  end

  def count
    my_counter = 0
    if @head.next_node.nil?
      my_counter = 1
    else
      current_node = @head
      until current_node.next_node = nil
        my_counter +=1
        current_node = current_node.next_node

      end
    end
 my_counter
  end

  def to_string
    first_name = @name_in_list[0]
    "The #{first_name} family"
  end

end
