//
//  Solution.swift
//  AlgorithmForHello
//
//  Created by Chu Yong on 4/3/23.
//

import Foundation

/*
 https://leetcode.cn/problems/shu-de-zi-jie-gou-lcof/
 
 【LeetCode力扣刷题 | 剑指Offer题解合集 | 画解算法思路Python3或C++代码实现】 https://www.bilibili.com/video/BV1CK411c7gx/?p=21
 
 剑指 Offer 26. 树的子结构
 输入两棵二叉树A和B，判断B是不是A的子结构。(约定空树不是任意一个树的子结构)

 B是A的子结构， 即 A中有出现和B相同的结构和节点值。

 例如:
 给定的树 A:

      3
     / \
    4   5
   / \
  1   2
 给定的树 B：

    4
   /
  1
 返回 true，因为 B 与 A 的一个子树拥有相同的结构和节点值。

 示例 1：

 输入：A = [1,2,3], B = [3,1]
 输出：false
 示例 2：

 输入：A = [3,4,5,1,2], B = [4,1]
 输出：true
 限制：

 0 <= 节点个数 <= 10000

 通过次数296,719提交次数638,329
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
    
    class Solution {
        func isSubStructure(_ A: TreeNode?, _ B: TreeNode?) -> Bool {
            guard let t1 = A else { return false }
            guard let t2 = B else { return false }
            if isSame(t1, t2) { return true }
            return isSubStructure(t1.left, t2) || isSubStructure(t1.right, t2)
        }
        func isSame(_ t1: TreeNode?, _ t2: TreeNode?) -> Bool {
            guard let t2 = t2 else { return true }
            guard let t1 = t1 else { return false }
            if t1.val != t2.val {
                return false
            }
            return isSame(t1.left, t2.left) || isSame(t1.right, t2.right)
        }
    }
    
    func test() {
        
    }
}
