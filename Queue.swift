//
//  Queue.swift
//  DataStructures
//
//  Created by Oliver Something on 2/27/22.
//

import Foundation

struct Queue <Element>: ExpressibleByArrayLiteral {
    private var list = Array<Element>()
    var count: Int {
        list.count
    }
    var isEmpty: Bool {
        list.isEmpty
    }
    
    mutating func push(element: Element) {
        list.append(element)
    }
    
    mutating func deQueue() -> Element? {
        let element = list.first
        list.removeFirst()
        return element
    }
    
    init() {
        
    }
    
    init(elements: [Element]) {
        self.list = elements
    }
    
    init(arrayLiteral elements: Element...) {
        self.list = elements
    }
}

extension Queue: CustomStringConvertible where Element == String {
  // 2
  var description: String {
    // 3
    let topDivider = "---Queue---\n"
    let bottomDivider = "\n-----------\n"

    // 4
    let queueElements = list.reversed().joined(separator: "\n")
    // 5
    return topDivider + queueElements + bottomDivider
  }
}
