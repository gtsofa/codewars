//
//  SmallestCodeIntepreterTests.swift
//  Triangular-treasureTests
//
//  Created by Julius on 27/08/2024.
//

import XCTest

class SmallestCodeIntepreter {
    
    func brainLuck(_ code: String, input: String) -> String {
        enum Operation {
            case next
            case pre
            case increase
            case decrease
            case put
            case get
            case loopStart(to: Int)
            case loopEnd(from: Int)
            
            init?(rawValue c: Character) {
                switch c {
                case ">": self = .next
                case "<": self = .pre
                case "+": self = .increase
                case "-": self = .decrease
                case ".": self = .put
                case ",": self = .get
                case "[": self = .loopStart(to: 0)
                case "]": self = .loopEnd(from: 0)
                default: return nil
                }
            }
        }
        
        var ops: [Operation] = code.compactMap { Operation(rawValue: $0) }
        var ip: Int = 0
        
        var data: [UInt8] = Array(repeating: 0, count: 1024)
        var dp: Int = 0
        
        var inputString: [UInt8] = input.unicodeScalars.map{ UInt8($0.value) }
        
        var output = [UInt8]("".utf8)
        
        var loopStartStack: [Int] = []
        
        for (index, operation) in ops.enumerated() {
            switch operation {
            case .loopStart:
                loopStartStack.append(index)
            case .loopEnd:
                guard let startIndex = loopStartStack.popLast() else { fatalError("loop stop unbalanced")}
                ops[startIndex] = .loopStart(to: index)
                ops[index] = .loopEnd(from: startIndex)
            default:
                ()
            }
        }
        
        while ip < ops.count {
            let op = ops[ip]
            switch op {
            case .next:      dp += 1
            case .pre:       dp -= 1
            case .increase:  data[dp] = data[dp] &+ 1
            case .decrease:  data[dp] = data[dp] &- 1
            case .put:
                let byte = data[dp]
                output.append(byte)
            case .get:
                if inputString.count > 0 {
                    let first = inputString.removeFirst()
                    data[dp] = first
                }
            case let .loopStart(to): if data[dp] == 0 { ip = to }
            case let .loopEnd(from): ip = from - 1
            }
            ip += 1
        }
        
        return output.reduce("", {$0 + String(UnicodeScalar($1))})
    }
}

final class SmallestCodeIntepreterTests: XCTestCase {
    
    func test_brainLuck_returnsTheCorrectString() {
        let sut = SmallestCodeIntepreter()
        XCTAssertEqual(sut.brainLuck("++++++++[>++++++++<-]>.", input: ""), "@")
        XCTAssertEqual(sut.brainLuck(",+[-.,+]", input: "Codewars\(UnicodeScalar(255)!)"), "Codewars")
    }

}
