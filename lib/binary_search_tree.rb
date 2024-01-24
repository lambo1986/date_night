class BinarySearchTree

  attr_reader :root_node

  def initialize
    @root_node = nil
  end

  def insert(score, title)
    if @root_node.nil?
      @root_node = Node.new(score, title)
      return 0 # depth
    else
      return insert_node(@root_node, score, title, 0)
    end
  end

  private

  def insert_node(current_node, score, title, depth)
    if score < current_node.score
      if current_node.left_node.nil?
        current_node.left_node = Node.new(score, title)
        return depth + 1
      else
        insert_node(current_node.left_node, score, title, depth + 1)
      end
    elsif score > current_node.score
      if current_node.right_node.nil?
        current_node.right_node = Node.new(score, title)
        return depth + 1
      else
        insert_node(current_node.right_node, score, title, depth + 1)
      end
    end
  end
end
