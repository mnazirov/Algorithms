/*
 Given the head of a singly linked list, return the middle node of the linked list.

 If there are two middle nodes, return the second middle node.
 
 Input: head = [1,2,3,4,5]
 Output: [3,4,5]
 Explanation: The middle node of the list is node 3.
 
 Input: head = [1,2,3,4,5,6]
 Output: [4,5,6]
 Explanation: Since the list has two middle nodes with values 3 and 4, we return the second one.
*/

import Foundation
import XCTest

class ListNode {
    var val: Int
    var next: ListNode?
    
    init() {
        self.val = 0;
        self.next = nil
    }
    
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var fast: ListNode? = head
        var slow: ListNode? = head
        
        while fast?.next != nil {
            fast = fast?.next?.next
            slow = slow?.next
        }
        
        return slow
    }
}
