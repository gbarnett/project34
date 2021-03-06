//
//  Stack.swift
//  SAP
//
//  Created by Gannon Barnett on 5/10/17.
//  Copyright © 2017 Barnett. All rights reserved.
//

import Foundation

struct IntStack : CustomStringConvertible{
    var size : Int
    var data : [Int?]
    
    var topIndex = 0
    
    init(size : Int) {
        self.size = size
        data = [Int?](repeatElement(nil, count: size))
    }
    
    mutating func push(newElement: Int){
        if !isFull() {
            data[topIndex] = newElement
            topIndex += 1
        } else {
            print("System error: Stack overflow")
        }
    }
    
    mutating func pop() -> Int? {
        let number : Int? = data[topIndex]!
        if number != nil {
            topIndex += -1
        }
        return number
    }
    
    func isFull() -> Bool{
        return topIndex == size - 1
    }
    
    func isEmpty() -> Bool {
        return data.count == 0
    }
    
    var description: String {
        return data.description
    }
    
}
