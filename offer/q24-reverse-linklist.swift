//
//  Solution.swift
//  AlgorithmForHello
//
//  Created by Chu Yong on 4/3/23.
//

import Foundation

/*
剑指 Offer 24. 反转链表
定义一个函数，输入一个链表的头节点，反转该链表并输出反转后链表的头节点。

 

示例:

输入: 1->2->3->4->5->NULL
输出: 5->4->3->2->1->NULL
 

限制：

0 <= 节点个数 <= 5000



注意：本题与主站 206 题相同：https://leetcode-cn.com/problems/reverse-linked-list/
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
    func reverseList(_ head: ListNode?) -> ListNode? {
        var previousNode: ListNode? = nil
        var currentNode: ListNode? = head
        var tempNode: ListNode? = head
        
        repeat {
            tempNode = currentNode?.next
            currentNode?.next = previousNode
            
            previousNode = currentNode
            currentNode = tempNode
        } while tempNode != nil
        
        return previousNode
    }
    func test() {
        print(reverseList(ListNode(1)))
    }
}
