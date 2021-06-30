import UIKit

//I.​ ​Add arithmetic operators (add, subtract, multiply, divide) to make the following expressions true. You can use any parentheses you’d like.

(3.0 + 1.0)  / 3.0  * 9.0

//II.​ ​Write a function/method utilizing Swift to determine whether two strings are anagrams or not (examples of anagrams: debit card/bad credit, punishments/nine thumps, etc.)


func anagramCheck(a: String, b: String) -> Bool {
    return a.replacingOccurrences(of: " ", with: "").sorted() == b.replacingOccurrences(of: " ", with: "").sorted()
}
anagramCheck(a: "debit card", b: "bad credit")
anagramCheck(a: "punishment", b: "nine thumps")

//III.​ ​Write a method in Swift to generate the nth Fibonacci number (1, 1, 2, 3, 5, 8, 13, 21, 34)
//A.​ ​recursive approach

func fibonacciRecursive(n: Int) -> Int {
    if n == 1 ||   n == 2 {
        return 1
    } else {
        return  fibonacciRecursive(n:  (n - 1)) + fibonacciRecursive(n: (n - 2))
    }
}

fibonacciRecursive(n: 9)

//B.​ ​iterative approach

func fibonacciIterative(n: Int) -> Int {
    var previouspreviousNumber: Int
    var previousNumber = 0
    var currentNumber = 1

    for _ in 1..<n {
        
        previouspreviousNumber = previousNumber
        
        previousNumber = currentNumber
        
        currentNumber = previouspreviousNumber + previousNumber
        
    }
    return currentNumber
}
fibonacciIterative(n: 9)


//IV. Which architecture would you use for the required task below? Why?

//MVVM because it's the most used with SwiftUI


