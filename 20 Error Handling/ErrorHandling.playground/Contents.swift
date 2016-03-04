//: Playground - noun: a place where people can play

import Cocoa

enum Token {
    case Number(Int)
    case Plus
}

class Lexer {
    
    enum Error: ErrorType {
        case InvalidCharacter(Character)
    }
    
    
    
    let input: String.CharacterView
    var position: String.CharacterView.Index
    
    init(input: String) {
        self.input = input.characters
        self.position = self.input.startIndex
    }
    
    func peek() -> Character? {
        guard position < input.endIndex else {
            return nil
        }
        return input[position]
    }
    
    func advance() {
        assert(position < input.endIndex, "Cannot advance past the end.!")
        ++position
    }
    
    
    func getNumber() -> Int {
        var value = 0
        
        while let nextCharacter = peek() {
            switch nextCharacter {
            case "0" ... "9":
                // Another digit - add it into value
                let digitValue = Int(String(nextCharacter))!
                value = 10*value + digitValue
                advance()
                
            default:
                // A non-digit - go back to regular lexing
                return value
            }
        }
        return value
    }
    
    func lex() throws -> [Token] {
        var tokens = [Token]()
        
        while let nextCharacter = peek() {
            switch nextCharacter {
                case "0" ... "9":
                let value = getNumber()
                tokens.append(.Number(value))
                
                case "+":
                tokens.append(.Plus)
                advance()
                
                case " ":
                // Just advance to ignore spaces
                advance()
                
            default:
                throw Error.InvalidCharacter(nextCharacter)
            }
        }
        
        return tokens
    }
}

class Parser {
    
    enum Error: ErrorType {
        case UnexpectedEndOfInput
        case InvalidToken(Token)
    }
    
    
    
    let tokens: [Token]
    var position = 0
    
    init(tokens: [Token]) {
        self.tokens = tokens
    }
    
    func getNextToken() -> Token? {
        guard position < tokens.count else {
            return nil
        }
        return tokens[position++]
    }
    
    func getNumber() throws -> Int {
        guard let token = getNextToken() else {
            throw Error.UnexpectedEndOfInput
        }
        
        switch token {
        case .Number(let value):
            return value
        case .Plus:
            throw Error.InvalidToken(token)
        }
    }
    
    func parse() throws -> Int {
        // Require a number first
        var value = try getNumber()
        
        while let token = getNextToken() {
            switch token {
                // Getting a Plus after a Number is legal
            case .Plus:
                // After a plus, we must get another numbe
                let nextNumber = try getNumber()
                value += nextNumber
                
                // Getting a number after a number is not legal
            case .Number:
                throw Error.InvalidToken(token)
            }
        }
        return value
    }
}




func evaluate(input: String) {
    print("Evaluating: \(input)")
    let lexer = Lexer(input: input)
    
    do {
        let tokens = try lexer.lex()
        print("Lexer output: \(tokens)")
        
        let parser = Parser(tokens: tokens)
        let result = try parser.parse()
        print("Parser output: \(result)")
    } catch  Lexer.Error.InvalidCharacter(let character) {
        print("Input contained an invalid character: \(character)")
    } catch Parser.Error.UnexpectedEndOfInput {
        print("Unexpected end of input during parsing")
    } catch Parser.Error.InvalidToken(let token) {
        print("Invalid token during parsing: \(token)")
    } catch {
        print("An error occurred: \(error)")
    }
}

evaluate("10 + 3 + abcdefg")







