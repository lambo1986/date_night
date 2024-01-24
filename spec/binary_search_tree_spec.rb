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

      depth = tree.insert(47, "Toys")

      expect(tree.root_node.score).to eq(47)
      expect(tree.root_node.title).to eq("Toys")
      expect(tree.root_node.left_node).to be(nil)
      expect(tree.root_node.right_node).to be(nil)
      expect(depth).to eq(0)
    end

    it  "can add a left or right node with #insert" do
      tree = BinarySearchTree.new

      depth1 = tree.insert(47, "Toys")
      depth2 = tree.insert(23, "Bill and Ted")
      depth3 = tree.insert(67, "Batman")
      depth4 = tree.insert(13, "Dude, Where's My Car?")
      depth5 = tree.insert(76, "Jurassic Park")

      expect(tree.root_node.score).to eq(47)
      expect(tree.root_node.title).to eq("Toys")
      expect(tree.root_node.left_node.score).to eq(23)
      expect(tree.root_node.left_node.title).to eq("Bill and Ted")
      expect(tree.root_node.right_node.score).to eq(67)
      expect(tree.root_node.right_node.title).to eq("Batman")
      expect(tree.root_node.right_node.right_node.score).to eq(76)
      expect(tree.root_node.right_node.right_node.title).to eq("Jurassic Park")
      expect(tree.root_node.left_node.left_node.score).to eq(13)
      expect(tree.root_node.left_node.left_node.title).to eq("Dude, Where's My Car?")
      expect(depth1).to eq(0)
      expect(depth2).to eq(1)
      expect(depth3).to eq(1)
      expect(depth4).to eq(2)
      expect(depth5).to eq(2)
    end
  end
end
