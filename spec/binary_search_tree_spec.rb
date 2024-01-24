require './lib/node'
require_relative '../lib/binary_search_tree'

RSpec.describe BinarySearchTree do
  it "exists" do
    tree = BinarySearchTree.new

    expect(tree).to be_an_instance_of(BinarySearchTree)
  end

  it "has a root node" do
    tree = BinarySearchTree.new

    expect(tree).to be_a(BinarySearchTree)
    expect(tree.root_node).to be(nil)
  end

  describe "methods" do
    it "can add a root node to the tree with #insert" do
      tree = BinarySearchTree.new

      tree.insert(47, "Toys")

      expect(tree.root_node.score).to eq(47)
      expect(tree.root_node.title).to eq("Toys")
      expect(tree.root_node.left_node).to be(nil)
      expect(tree.root_node.right_node).to be(nil)
    end

    it  "can add a left or right node with #insert" do
      tree = BinarySearchTree.new

      tree.insert(47, "Toys")
    
      expect(tree.root_node.score).to eq(47)
      expect(tree.root_node.title).to eq("Toys")

      tree.insert(23, "Bill and Ted")

      expect(tree.root_node.left_node.score).to eq(23)
      expect(tree.root_node.left_node.title).to eq("Bill and Ted")
    end
  end
end
