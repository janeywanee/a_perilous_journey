require "minitest/autorun"
require "./lib/linked_list"

class LinkedListTest <Minitest::Test

  def test_it_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_append_data
    list = LinkedList.new("West")

    assert_equal "West", list.append
  end
end
