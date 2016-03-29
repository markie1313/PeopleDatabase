//
//  Person.swift
//  PeopleDatabase
//
//  Created by Mark Lindberg on 3/29/16.
//  Copyright © 2016 Phredster. All rights reserved.
//

import Foundation

class Person  {
    var firstName = ""
    var lastName = ""
    var age = 0
    
    func input() -> String {
        
        let keyboard = NSFileHandle.fileHandleWithStandardInput()
        let inputData = keyboard.availableData
        let rawString = NSString(data: inputData, encoding:NSUTF8StringEncoding)
        if let string = rawString {
            return string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        } else {
            return "Invalid input"
        }
    }
    
    func changeFirstName (newFirstName: String) {
        
        firstName = newFirstName
        
    }
    
    func enterInfo() {
        
        print("What the first name")
        firstName = input()
        
        print("What is \(firstName)'s last name?")
        lastName = input()
        
        print("How old is \(firstName)?")
        let userInput = Int(input())
        
        if let number = userInput {
            
            age = number
            
            print("\(firstName) \(lastName) is \(age) years old!")
            
        }
    }
    
    func printInfo() {
        
        print("Name: \(firstName) \(lastName). Age: \(age)")
        
    }
    
}
