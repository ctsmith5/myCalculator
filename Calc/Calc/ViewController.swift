//
//  ViewController.swift
//  Calc
//
//  Created by Colin Smith on 1/6/19.
//  Copyright © 2019 Colin Smith. All rights reserved.
//

import UIKit

var calc = Calculation()

class ViewController: UIViewController {
    

  
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var operationLabel: UILabel!
    
    
/* Buttons
-------------------------------------------------
    // Integer Digits 0-9
*/
    
    var onlyOneNumber: Int? = 1

    //let a:Int? = Int(firstText.text)
    @IBAction func touchZero(_ sender: UIButton) {
        
        if onlyOneNumber != nil {
            calc.currentInput.insert("0", at: calc.currentInput.endIndex)
            updateLabel()
        }
        if onlyOneNumber == nil {
            calc.lastInput.insert("0", at: calc.lastInput.endIndex)
            updateLabel()
        }
    }
    @IBAction func touchOne(_ sender: UIButton) {
        if onlyOneNumber != nil {
            calc.currentInput.insert("1", at: calc.currentInput.endIndex)
            updateLabel()
        }
        if onlyOneNumber == nil {
            calc.lastInput.insert("1", at: calc.lastInput.endIndex)
            updateLabel()
        }
    }
    @IBAction func touchTwo(_ sender: UIButton) {
        if onlyOneNumber != nil {
            calc.currentInput.insert("2", at: calc.currentInput.endIndex)
            updateLabel()
        }
        if onlyOneNumber == nil {
            calc.lastInput.insert("2", at: calc.lastInput.endIndex)
            updateLabel()
        }
    }
    @IBAction func touchThree(_ sender: UIButton) {
        if onlyOneNumber != nil {
            calc.currentInput.insert("3", at: calc.currentInput.endIndex)
            updateLabel()
        }
        if onlyOneNumber == nil {
            calc.lastInput.insert("3", at: calc.lastInput.endIndex)
            updateLabel()
        }
    }
    @IBAction func touchFour(_ sender: UIButton) {
        if onlyOneNumber != nil {
            calc.currentInput.insert("4", at: calc.currentInput.endIndex)
            updateLabel()
        }
        if onlyOneNumber == nil {
           calc.lastInput.insert("4", at: calc.lastInput.endIndex)
            updateLabel()
        }
    }
    @IBAction func touchFive(_ sender: UIButton) {
        if onlyOneNumber != nil {
            calc.currentInput.insert("5", at: calc.currentInput.endIndex)
            updateLabel()
        }
        if onlyOneNumber == nil {
            calc.lastInput.insert("5", at: calc.lastInput.endIndex)
            updateLabel()
        }
    }
    @IBAction func touchSix(_ sender: UIButton) {
        if onlyOneNumber != nil {
            calc.currentInput.insert("6", at: calc.currentInput.endIndex)
            updateLabel()
        }
        if onlyOneNumber == nil {
            calc.lastInput.insert("6", at: calc.lastInput.endIndex)
            updateLabel()
        }
    }
    @IBAction func touchSeven(_ sender: UIButton) {
        if onlyOneNumber != nil {
            calc.currentInput.insert("7", at: calc.currentInput.endIndex)
            updateLabel()
        }
        if onlyOneNumber == nil {
            calc.lastInput.insert("7", at: calc.lastInput.endIndex)
            updateLabel()
            
        }
    }
    @IBAction func touchEight(_ sender: UIButton) {
        if onlyOneNumber != nil {
           calc.currentInput.insert("8", at: calc.currentInput.endIndex)
            updateLabel()
        }
        if onlyOneNumber == nil {
            calc.lastInput.insert("8", at: calc.lastInput.endIndex)
            updateLabel()
            
        }
    }
    @IBAction func touchNine(_ sender: UIButton) {
        if onlyOneNumber != nil {
            calc.currentInput.insert("9", at: calc.currentInput.endIndex)
            updateLabel()
        }
        if onlyOneNumber == nil {
            calc.lastInput.insert("9", at: calc.lastInput.endIndex)
            updateLabel()
        }
    }
    @IBAction func touchDecimal(_ sender: UIButton) {
        if onlyOneNumber != nil {
            calc.currentInput.insert(".", at: calc.currentInput.endIndex)
            updateLabel()
        }
        if onlyOneNumber == nil {
            calc.lastInput.insert(".", at: calc.lastInput.endIndex)
            updateLabel()
        }
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        onlyOneNumber = nil
        calc.addOperator = true
        operationLabel.text = "+"
    }
    @IBAction func subtractButton(_ sender: UIButton) {
        onlyOneNumber = nil
        calc.subtractOperator = true
        operationLabel.text = "-"
    }
    @IBAction func multiplyButton(_ sender: UIButton) {
        onlyOneNumber = nil
        calc.multiplyOperator = true
        operationLabel.text = "x"
    }
    @IBAction func divideButton(_ sender: UIButton) {
       onlyOneNumber = nil
        calc.divideOperator = true
        operationLabel.text = "/"
    }
    
    @IBAction func touchEquals(_ sender: UIButton) {
        let result = calc.runCalculation()
        outputLabel.text = String(result)
        onlyOneNumber = 1
        calc.currentInput = String(result)
        calc.lastInput = ""
        calc.addOperator = false
        calc.subtractOperator = false
        calc.multiplyOperator = false
        calc.divideOperator = false
        operationLabel.text = " "
        
    }
    
    @IBAction func touchNegate(_ sender: UIButton) {
        if(onlyOneNumber != nil){
                calc.currentInput.insert("-", at: calc.currentInput.startIndex)
                updateLabel()
        }
        if(onlyOneNumber == nil){
            calc.lastInput.insert("-", at: calc.currentInput.startIndex)
            updateLabel()
        }
    }
    
    @IBAction func clear(_ sender: UIButton) {
        calc.reset()
        outputLabel.text = " "
        operationLabel.text = " "
    }
    
    func updateLabel(){
        
        if onlyOneNumber != nil {
            outputLabel.text = String(calc.currentInput)
        }
        if onlyOneNumber == nil {
            outputLabel.text = String(calc.lastInput)
        }
        
    }
}

