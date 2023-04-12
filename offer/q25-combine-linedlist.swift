//
//  Solution.swift
//  AlgorithmForHello
//
//  Created by Chu Yong on 4/3/23.
//

import Foundation

/*
 剑指 Offer 25. 合并两个排序的链表
 输入两个递增排序的链表，合并这两个链表并使新链表中的节点仍然是递增排序的。

 示例1：

 输入：1->2->4, 1->3->4
 输出：1->1->2->3->4->4
 限制：

 0 <= 链表长度 <= 1000

 注意：本题与主站 21 题相同：https://leetcode-cn.com/problems/merge-two-sorted-lists/

 通过次数342,979提交次数473,669
*/

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    
    /// Key: 归并排序，Merge Sort
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var dummy = ListNode(-1)
        var cur: ListNode? = dummy
        
        var tailL1 = l1
        var tailL2 = l2
        
        while let listNode1 = tailL1, let listNode2 = tailL2 {
            if listNode1.val <= listNode2.val {
                cur?.next = listNode1
                tailL1 = tailL1?.next
            } else {
                cur?.next = listNode2
                tailL2 = tailL2?.next
            }
            cur = cur?.next
        }
        
        cur?.next = tailL1 != nil ? tailL1 : tailL2
        
        return dummy.next
    }
    
    func test() {
        
    }
}
