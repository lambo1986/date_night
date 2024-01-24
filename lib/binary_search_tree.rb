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

  def include?(score)
    current_node = @root_node
    while current_node != nil
      return true if current_node.score == score

      if score < current_node.score
        current_node = current_node.left_node
      else
        current_node = current_node.right_node
      end
    end
    false
  end

  def depth_of(score)
    current_node = @root_node
    depth = 0
    while current_node != nil
      return depth if current_node.score == score

      if score < current_node.score
        current_node = current_node.left_node
      else
        current_node = current_node.right_node
      end
      depth += 1
    end
    nil
  end

  def max
    return nil if @root_node.nil?

    current_node = @root_node
    while current_node.right_node != nil
      current_node = current_node.right_node
    end

    { current_node.title => current_node.score }
  end

  def min
    return nil if @root_node.nil?

    current_node = @root_node
    while current_node.left_node != nil
      current_node = current_node.left_node
    end

    { current_node.title => current_node.score }
  end

  def sort
    sorted_array = []
    in_order_traversal(@root_node, sorted_array)
    sorted_array
  end

  private

  def insert_node(current_node, score, title, depth)
    if score < current_node.score
      if current_node.left_node.nil?
        current_node.left_node = Node.new(score, title)
        return depth + 1
      else
        return insert_node(current_node.left_node, score, title, depth + 1)
      end
    elsif score > current_node.score
      if current_node.right_node.nil?
        current_node.right_node = Node.new(score, title)
        return depth + 1
      else
        return insert_node(current_node.right_node, score, title, depth + 1)
      end
    elsif score == current_node.score
      return "No Duplicate Score Allowed"
    end
  end

  def in_order_traversal(node, array)
    return if node.nil?

    in_order_traversal(node.left_node, array)
    array << { node.title => node.score }
    in_order_traversal(node.right_node, array)
  end
end
