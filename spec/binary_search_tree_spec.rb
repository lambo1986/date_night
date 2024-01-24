require_relative '../lib/node'
require_relative '../lib/binary_search_tree'

RSpec.describe BinarySearchTree do
  it "exists" do
    node1 = Node.new(37, "Dude, Where's My Car?")
    tree = BinarySearchTree.new(node1)

    expect(tree).to be_an_instance_of(BinarySearchTree)
  end

  it "has a root node" do
    node1 = Node.new(37, "Dude, Where's My Car?")
    tree = BinarySearchTree.new(node1)
  end
end
