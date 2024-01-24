require_relative '../lib/node'
require_relative '../lib/binary_search_tree'

RSpec.describe BinarySearchTree do
  it "exists" do
    tree = BinarySearchTree.new

    expect(tree).to be_an_instance_of(BinarySearchTree)
  end

  it "has a root node" do
    tree = BinarySearchTree.new

    expect(tree.root_node).to be(nil)
  end
end
