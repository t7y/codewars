require_relative '../spec_helper'

describe Excercises do
  include Excercises

  context "#tree_by_levels" do
    let(:tree_one) do
      node_one = TreeNode.new(1)
      node_three = TreeNode.new(3)

      node_four = TreeNode.new(4)
      node_five = TreeNode.new(5)

      node_eight = TreeNode.new(8, node_one, node_three)
      node_nine = TreeNode.new(9, node_four, node_five)

      node_two = TreeNode.new(2, node_eight, node_nine)
    end
    
    it "a tree with only the root should be balanced" do
      expect(tree_by_levels(tree_one)).to eq [2,8,9,1,3,4,5]
    end
  end
end
