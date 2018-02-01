require "./lib/node"


class LinkedList
  attr_reader :head
  def initialize
   @head = nil
   @node_count = 0

  end

  def append(name)
      current = @head
    if @head == nil
       @head = Node.new(name)

    else
      until current.next_node == nil
            current = current.next_node
      end
         current.next_node = Node.new(name)
    end
  end

    # @node_count +=1
    # # @name_in_list << name
    # @head = Node.new(name)


  # def tail(current_node = @head)
  #   if current_node.next_node != nil
  #      current_node = current_node.next_node
  #      tail(current_node)
  #   else
  #     current_node
  #   end
  # end

  def count
    if @head == nil
      my_counter = 0

    else
      current_node = @head
      my_counter = 1

      until current_node == nil
        current_node = current_node.next_node

        my_counter +=1
      end
      my_counter
    end

  end

  def to_string
    current_node = @head.next_node
    family_name = "The #{@head.surname} family"
    until current_node.next_node == nil do
    family_name << ", followed by the #{current_node.surname} family"
      current_node = current_node.next_node
    end
    family_name
  end

end
