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

  def test_append_works_more_than_once
    list = LinkedList.new
    list.append("West")
    list.append("East")
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
    assert_equal 1, list.count
    list.append("South")
    list.append("North")
    assert_equal 3, list.count
  end

  def test_list_into_string
    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")
    list.append("Mckinney")
    assert_equal "The Rhodes family, followed by the   Hardy family, followed by the Mckinney family", list.to_string
   end

 end
