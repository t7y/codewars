class TreeNode
  attr_accessor :left, :right,  :value
  def initialize(value, left=nil, right=nil) 
    @value = value
    @left = left
    @right = right
  end
end

module Excercises
  # return the array containing the tree levels, from root to last level.
  def tree_by_levels(node)
    root = node
    q = []
    q.unshift(root)
    result = []
    
    while !q.empty?
      node = q.pop
      result << node.value
      
      left = node.left
      if !left.nil?
        q.unshift(left)
      end
      right = node.right
      if !right.nil?
        q.unshift(right)
      end
    end

    result
  end
end
