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

  def count
    @node_count
  end

  def to_string
    first_name = @name_in_list[0]
    "The #{first_name} family"
  end

end
