//
//  StaticArray.swift
//  
//
//  Created by Brook16 on 2022/8/22.
//

import Foundation

public class StaticArray<E> {
    private var _buffer: [E?]
    
    public init(length: Int) {
        _buffer = Array<E?>(repeating: nil, count: length)
    }
    
    public init(initial: [E?]) {
        _buffer = initial
    }
    
    public var length: Int {
        return _buffer.count
    }
    
    public subscript(_ index: Int) -> E? {
        set {
            _buffer[index] = newValue
        }
        
        get {
            return _buffer[index]
        }
    }
    
    public func copy() -> StaticArray<E> {
        return StaticArray(initial: _buffer)
    }
}


extension StaticArray: CustomStringConvertible {
    public var description: String {
        var string = ""
        string += "["
        for i in 0..<length {
            if i != 0 {
                string += ", "
            }
            if let element = self[i] {
                string += "\(element)"
            } else {
                string += "nil"
            }
        }
        
        string += "]"
        
        return string
    }
}
