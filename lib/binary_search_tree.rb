class BinarySearchTree

  attr_reader :root_node

  def initialize
    @root_node = nil
  end

  def insert(score, title)
    if @root_node.nil?
      @root_node = Node.new(score, title)
    else
      if @root_node.score > score
        @root_node.left_node = Node.new(score, title)
      else
        @root_node.right_node = Node.new(score, title)
      end
    end
  end
end
