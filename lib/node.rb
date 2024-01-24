class Node

  attr_reader :score, :title
  attr_accessor :left_node, :right_node # need this to be able to change the left and right nodes

  def initialize(score, title)
    @score = score
    @title = title
    @left_node = nil
    @right_node = nil
  end
end
