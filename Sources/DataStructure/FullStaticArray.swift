//
//  FullStackArray.swift
//  
//
//  Created by Brook16 on 2022/8/22.
//

import Foundation

public class FullStaticArray<E> {
    private var _buffer: [E]
    
    public init(initial: [E]) {
        _buffer = initial
    }
    
    public var length: Int {
        return _buffer.count
    }
    
    public subscript(_ index: Int) -> E {
        set {
            _buffer[index] = newValue
        }
        
        get {
            return _buffer[index]
        }
    }
    
    public func copy() -> FullStaticArray<E> {
        return FullStaticArray(initial: _buffer)
    }
}
