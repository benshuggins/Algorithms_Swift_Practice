//: Reverse a Linked List
//https://www.youtube.com/watch?v=Msv0D5zwmHQ&ab_channel=iOSAcademy

import Foundation

final class ListNode {
    let value: Int
    var next: ListNode?
    init(value: Int) {
        self.value = value
    }
}

func createListList() -> ListNode {
    let nodes: [ListNode] = Array(1...10).map { ListNode(value: $0)}
    let head = ListNode(value: 0)
    var curr = head
    for i in 0..<nodes.count {
        curr.next = nodes[i]
        curr = nodes[i]
    }
    return head
}

// prevnode will be the head of our reversedList when we a re done
func printLinkedList(_ node: ListNode) {
    var curr: ListNode? = node
    var str = ""
    while curr != nil {
        str += "\(curr?.value ?? 0) -> "
        curr = curr?.next
    }
    print(String(str.dropLast(4)))
}

func testReversal() {
    
    let list = createListList()
    printLinkedList(list)
    
   // let node = reverseList(list)
  //  printLinkedList(node!)
}

// This is the function to reverse a linked list
func reverseList(_ head: ListNode?) -> ListNode? {
    var prevNode: ListNode? = nil
    var headNode = head
    
    while headNode != nil {
        let nextHead = headNode?.next
        headNode?.next = prevNode
        prevNode = headNode
        headNode = nextHead
    }
    return prevNode
}


testReversal()
