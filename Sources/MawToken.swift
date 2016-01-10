//
//  MawToken.swift
//  Maw
//
//  Created by Andrzej Spiess on 14/11/15.
//  Copyright © 2015 Andrzej Spiess. All rights reserved.
//

protocol Number { }

extension Int : Number { }
extension Float : Number { }

public enum TokenType : String {
    case MINUS = "-"
    case PLUS = "+"
    case MULTIPLY = "*"
    case DIVIDE = "/"
    case NUMBER
    case EOE
}

public class MawToken {
    
    let type : TokenType
    let value : Lexeme
    
    init(type : TokenType, value : Lexeme) {
        self.type = type
        self.value = value
    }
}

extension MawToken : CustomStringConvertible {
    
    public var description: String {
        return "MAWTOKEN(\(self.type), \(self.value))\n"
    }
    
}