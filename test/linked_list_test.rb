require "minitest/autorun"
require "./lib/linked_list"
require "./lib/node"
require "pry"

class LinkedListTest <Minitest::Test

  def test_it_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_append_data
    list = LinkedList.new

    assert_instance_of Node, list.append("West")
  end

     def test_next_node_is_nil
       list = LinkedList.new
       list.append("West")
       assert_nil list.head.next_node
     end

     def test_count_elements_in_list
       list = LinkedList.new
       list.append("West")
       assert_equal list.count,1
       list.append("South")
       list.append("North")
       binding.pry
       assert_equal list.count,3
     end

     def test_list_into_string
       list = LinkedList.new
       list.append("West")
       list.append("Hardy")
       assert_equal list.to_string,"The West family"
   end
 end
