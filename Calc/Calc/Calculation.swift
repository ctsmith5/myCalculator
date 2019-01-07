//
//  Calculation.swift
//  Calc
//
//  Created by Colin Smith on 1/6/19.
//  Copyright © 2019 Colin Smith. All rights reserved.
//

import Foundation

class Calculation {
    
    var currentInput: String = ""
    var lastInput: String = ""
    var decimalInput: Double = 0
    
    var addOperator: Bool = false
    var subtractOperator: Bool = false
    var multiplyOperator: Bool = false
    var divideOperator: Bool = false
    
    func runCalculation() -> Double {
        if (addOperator == true){
            let operator1 = Double(currentInput)
            let operator2 = Double(lastInput)
            if ((operator1 != nil) && operator2 != nil){
                let operation = operator1! + operator2!
                return operation
            }
            else {return 0.0}
        }
        if (subtractOperator == true) {
            let operator1 = Double(currentInput)
            let operator2 = Double(lastInput)
            if ((operator1 != nil) && operator2 != nil){
                let operation = operator1! - operator2!
                return operation
            }
            else {return 0.0}
        }
        if (multiplyOperator == true) {
            let operator1 = Double(currentInput)
            let operator2 = Double(lastInput)
            if ((operator1 != nil) && operator2 != nil){
                let operation = operator1! * operator2!
                return operation
            }
            else {return 0.0}
        }
        if (divideOperator == true) {
            let operator1 = Double(currentInput)
            let operator2 = Double(lastInput)
            if ((operator1 != nil) && operator2 != nil){
                let operation = operator1! / operator2!
                return operation
            }
            else {return 0.0}
        }
        else {
        return 0.0
        }
        
    }
    
    func reset() {
        currentInput = ""
        lastInput = ""
        decimalInput = 0
        
        addOperator = false
        subtractOperator = false
        multiplyOperator = false
        divideOperator = false
        
        
    }
    
    

}

