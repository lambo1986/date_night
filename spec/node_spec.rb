require_relative '../lib/node'
require_relative '../lib/binary_search_tree'

RSpec.describe Node do
    it "exists, has a score, title, left node and right node" do
      node1 = Node.new(37, "Dude, Where's My Car?")

      expect(node1).to be_an_instance_of(Node)
      expect(node1.score).to eq(37)
      expect(node1.title).to eq("Dude, Where's My Car?")
      expect(node1.left_node).to be_nil
      expect(node1.right_node).to be_nil
  end
end
