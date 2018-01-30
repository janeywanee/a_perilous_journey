require "minitest/autorun"
require "./lib/node"

class NodeTest <Minitest::Test

  def test_it_exists
    node = Node.new("Burke")

    assert_instance_of Node, node
  end

  def test_it_has_a_name
    node = Node.new("Burke")

    assert_equal "Burke", node.surname

  end

  def test_node_is_nil
    node = Node.new("Burke")

    assert_nil nil, node.next_node
  end

end
