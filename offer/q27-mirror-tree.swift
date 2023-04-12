//
//  Solution.swift
//  AlgorithmForHello
//
//  Created by Chu Yong on 4/3/23.
//

import Foundation

/*
 https://leetcode.cn/problems/er-cha-shu-de-jing-xiang-lcof/
 
 【LeetCode力扣刷题 | 剑指Offer题解合集 | 画解算法思路Python3或C++代码实现】 https://www.bilibili.com/video/BV1CK411c7gx/?p=22
 剑指 Offer 27. 二叉树的镜像
 请完成一个函数，输入一个二叉树，该函数输出它的镜像。

 例如输入：

      4
    /   \
   2     7
  / \   / \
 1   3 6   9
 镜像输出：

      4
    /   \
   7     2
  / \   / \
 9   6 3   1

  

 示例 1：

 输入：root = [4,2,7,1,3,6,9]
 输出：[4,7,2,9,6,3,1]
  

 限制：

 0 <= 节点个数 <= 1000

 注意：本题与主站 226 题相同：https://leetcode-cn.com/problems/invert-binary-tree/

 通过次数350,108提交次数439,709
*/


// Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}


class Solution {
    
    func mirrorTree(_ root: TreeNode?) -> TreeNode? {
        if root == nil { return nil }
        var root = root
        self.swapTreeNode(&root)
        return root
    }
    
    func swapTreeNode(_ node: inout TreeNode?) {
        guard let node = node else { return }
        swap(&node.left, &node.right)
        self.swapTreeNode(&node.left)
        self.swapTreeNode(&node.right)
    }
    
    func test() {
        
    }
}
